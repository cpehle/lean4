/*
Copyright (c) 2013 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Author: Leonardo de Moura
*/
#include <iostream>
#include <fstream>
#include <signal.h>
#include <cctype>
#include <cstdlib>
#include <string>
#include <utility>
#include <vector>
#include <set>
#include "runtime/stackinfo.h"
#include "runtime/interrupt.h"
#include "runtime/memory.h"
#include "runtime/thread.h"
#include "runtime/debug.h"
#include "runtime/sstream.h"
#include "runtime/array_ref.h"
#include "runtime/object_ref.h"
#include "runtime/option_ref.h"
#include "runtime/utf8.h"
#include "util/timer.h"
#include "util/macros.h"
#include "util/io.h"
#include "util/options.h"
#include "util/option_declarations.h"
#include "library/elab_environment.h"
#include "kernel/kernel_exception.h"
#include "kernel/trace.h"
#include "library/dynlib.h"
#include "library/formatter.h"
#include "library/module.h"
#include "library/time_task.h"
#include "library/util.h"
#include "library/print.h"
#include "initialize/init.h"
#include "library/ir_interpreter.h"
#include "util/path.h"
#ifdef _MSC_VER
#include <io.h>
#define STDOUT_FILENO 1
#else
#include <getopt.h>
#include <unistd.h>
#endif
#if defined(LEAN_EMSCRIPTEN)
#include <emscripten.h>
#endif
#include "githash.h" // NOLINT

#ifdef LEAN_WINDOWS
#include <windows.h>
#endif

#ifdef _MSC_VER
// extremely simple implementation of getopt.h
enum arg_opt { no_argument, required_argument, optional_argument };

struct option {
    const char name[20];
    arg_opt has_arg;
    int *flag;
    char val;
};

static char *optarg;
static int optind = 1;

int getopt_long(int argc, char *in_argv[], const char *optstring, const option *opts, int *index) {
    optarg = nullptr;
    if (optind >= argc)
        return -1;

    char *argv = in_argv[optind];
    if (argv[0] != '-') {
        // find first -opt if any
        int i = optind;
        bool found = false;
        for (; i < argc; ++i) {
            if (in_argv[i][0] == '-') {
                found = true;
                break;
            }
        }
        if (!found)
            return -1;
        auto next = in_argv[i];
        // FIXME: this doesn't account for long options with arguments like --foo arg
        memmove(&in_argv[optind + 1], &in_argv[optind], (i - optind) * sizeof(argv));
        argv = in_argv[optind] = next;
    }
    ++optind;

    // long option
    if (argv[1] == '-') {
        auto eq = strchr(argv, '=');
        size_t sz = (eq ? (eq - argv) : strlen(argv)) - 2;
        for (auto I = opts; *I->name; ++I) {
            if (!strncmp(I->name, argv + 2, sz) && I->name[sz] == '\0') {
                assert(!I->flag);
                switch (I->has_arg) {
                case no_argument:
                    if (eq) {
                        std::cerr << in_argv[0] << ": option doesn't take an argument -- " << I->name << std::endl;
                        return '?';
                    }
                    break;
                case required_argument:
                    if (eq) {
                        optarg = eq + 1;
                    } else {
                        if (optind >= argc) {
                            std::cerr << in_argv[0] << ": option requires an argument -- " << I->name << std::endl;
                            return '?';
                        }
                        optarg = in_argv[optind++];
                    }
                    break;
                case optional_argument:
                    if (eq) {
                        optarg = eq + 1;
                    }
                    break;
                }
                if (index)
                  *index = I - opts;
                return I->val;
            }
        }
        return '?';
    } else {
        auto opt = strchr(optstring, argv[1]);
        if (!opt)
            return '?';

        if (opt[1] == ':') {
            if (argv[2] == '\0') {
                if (optind < argc) {
                    optarg = in_argv[optind++];
                } else {
                    std::cerr << in_argv[0] << ": option requires an argument -- " << *opt << std::endl;
                    return '?';
                }
            } else {
                optarg = argv + 2;
            }
        }
        return *opt;
    }
}
#endif

using namespace lean; // NOLINT

static struct option g_long_options[] = {
    {"version",      no_argument,       0, 'v'},
    {"help",         no_argument,       0, 'h'},
    {"githash",      no_argument,       0, 'g'},
    {"short-version", no_argument,      0, 'V'},
    {"run",          no_argument,       0, 'r'},
    {"o",            optional_argument, 0, 'o'},
    {"i",            optional_argument, 0, 'i'},
    {"stdin",        no_argument,       0, 'I'},
    {"root",         required_argument, 0, 'R'},
    {"memory",       required_argument, 0, 'M'},
    {"trust",        required_argument, 0, 't'},
    {"profile",      no_argument,       0, 'P'},
    {"stats",        no_argument,       0, 'a'},
    {"quiet",        no_argument,       0, 'q'},
    {"deps",         no_argument,       0, 'd'},
    {"src-deps",     no_argument,       0, 'O'},
    {"deps-json",    no_argument,       0, 'N'},
    {"timeout",      optional_argument, 0, 'T'},
    {"c",            optional_argument, 0, 'c'},
    {"bc",           optional_argument, 0, 'b'},
    {"arm64",        optional_argument, 0, 'A'},
    {"features",     no_argument,       0, 'f'},
    {"exitOnPanic",  no_argument,       0, 'e'},
#if defined(LEAN_MULTI_THREAD)
    {"threads",      required_argument, 0, 'j'},
    {"tstack",       required_argument, 0, 's'},
    {"server",       no_argument,       0, 'S'},
    {"worker",       no_argument,       0, 'W'},
#endif
    {"plugin",       required_argument, 0, 'p'},
    {"load-dynlib",  required_argument, 0, 'l'},
    {"setup",        required_argument, 0, 'u'},
    {"error",        required_argument, 0, 'E'},
    {"json",         no_argument,       0, 'J'},
    {"print-prefix", no_argument,       0, 'x'},
    {"print-libdir", no_argument,       0, 'L'},
#ifdef LEAN_DEBUG
    {"debug",        required_argument, 0, 'B'},
#endif
    {0, 0, 0, 0}
};

static char const * g_opt_str =
    "PdD:o:i:b:c:C:qgvVht:012j:012rR:M:012T:012ap:eE:"
#if defined(LEAN_MULTI_THREAD)
    "s:012"
#endif
; // NOLINT

namespace lean {
extern "C" obj_res lean_shell_main(obj_arg args, obj_arg shell_opts);
int run_shell_main(int argc, char* argv[], object_ref const & shell_opts) {
    list_ref<string_ref> args;
    while (argc > 0) {
        argc--;
        args = list_ref<string_ref>(string_ref(argv[argc]), args);
    }
    return get_io_scalar_result<uint32>(lean_shell_main(
        args.steal(),
        shell_opts.to_obj_arg()
    ));
}

extern "C" object* lean_init_search_path();
void init_search_path() {
    consume_io_result(lean_init_search_path());
}

extern "C" obj_res lean_shell_options_mk(obj_arg);
object_ref mk_shell_options() {
    return object_ref(lean_shell_options_mk(box(0)));
}

extern "C" obj_res lean_shell_options_process(obj_arg shell_opts, uint32 opt, obj_arg opt_arg);
bool process_shell_option(object_ref & shell_opts, int opt, char const * optarg, int & rc) {
    auto optarg_ref = optarg ? mk_option_some(mk_string(optarg)) : mk_option_none();
    auto r = lean_shell_options_process(shell_opts.steal(), opt, optarg_ref);
    if (io_result_is_ok(r)) {
        shell_opts = object_ref(io_result_get_value(r), true);
        dec_ref(r);
        return false;
    } else {
        rc = unbox(io_result_get_error(r));
        dec_ref(r);
        return true;
    }
}

extern "C" uint8 lean_shell_options_get_run(obj_arg shell_opts);
bool get_shell_run(object_ref const & shell_opts) {
    return lean_shell_options_get_run(shell_opts.to_obj_arg());
}

extern "C" uint8 lean_shell_options_get_profiler(obj_arg shell_opts);
bool get_shell_profiler(object_ref const & shell_opts) {
    return lean_shell_options_get_profiler(shell_opts.to_obj_arg());
}

extern "C" uint32 lean_shell_options_get_num_threads(obj_arg shell_opts);
unsigned get_shell_num_threads(object_ref const & shell_opts) {
    return lean_shell_options_get_num_threads(shell_opts.to_obj_arg());
}
}

extern "C" object * lean_enable_initializer_execution();

namespace lean {
extern void (*g_lean_report_task_get_blocked_time)(std::chrono::nanoseconds);
}
static bool trace_task_get_blocked = getenv("LEAN_TRACE_TASK_GET_BLOCKED") != nullptr;
static void report_task_get_blocked_time(std::chrono::nanoseconds d) {
    if (has_no_block_profiling_task()) {
        report_profiling_time("blocked (unaccounted)", d);
        exclude_profiling_time_from_current_task(d);
        if (trace_task_get_blocked) {
            sstream ss;
            ss << "Task.get blocked for " << std::chrono::duration_cast<std::chrono::duration<float, std::milli>>(d).count() << "ms";
            // using a panic for reporting is a bit of a hack, but good enough for this
            // `lean`-specific use case
            lean_panic(ss.str().c_str(), /* force stderr */ true);
        }
    }
}

extern "C" LEAN_EXPORT int lean_main(int argc, char ** argv) {
#ifdef LEAN_EMSCRIPTEN
    // When running in command-line mode under Node.js, we make system directories available in the virtual filesystem.
    // This mode is used to compile 32-bit oleans.
    EM_ASM(
        if ((typeof process === "undefined") || (process.release.name !== "node")) {
            throw new Error("The Lean command-line driver can only run under Node.js. For the embeddable WASM library, see lean_wasm.cpp.");
        }

        var lean_path = process.env["LEAN_PATH"];
        if (lean_path) {
            ENV["LEAN_PATH"] = lean_path;
        }

        // We cannot mount /, see https://github.com/emscripten-core/emscripten/issues/2040
        FS.mount(NODEFS, { root: "/home" }, "/home");
        FS.mount(NODEFS, { root: "/tmp" }, "/tmp");
        FS.chdir(process.cwd());
    );
#elif defined(LEAN_WINDOWS)
    // "best practice" according to https://docs.microsoft.com/en-us/windows/win32/api/errhandlingapi/nf-errhandlingapi-seterrormode
    SetErrorMode(SEM_FAILCRITICALERRORS);
    // properly formats Unicode characters on the Windows console
    // see https://github.com/leanprover/lean4/issues/4291
    SetConsoleOutputCP(CP_UTF8);
#endif
    auto init_start = std::chrono::steady_clock::now();
    lean::initializer init;
    second_duration init_time = std::chrono::steady_clock::now() - init_start;

    try {
        // Remark: This currently runs under `IO.initializing = true`.
        init_search_path();
    } catch (lean::throwable & ex) {
        std::cerr << "error: " << ex.what() << std::endl;
        return 1;
    }
    consume_io_result(lean_enable_initializer_execution());

<<<<<<< HEAD
    int rc;
    object_ref shell_opts;
    try {
        shell_opts = mk_shell_options();
        for (;;) {
            int c = getopt_long(argc, argv, g_opt_str, g_long_options, NULL);
            if (c == -1)
                break; // end of command line
            if (process_shell_option(shell_opts, c, optarg, rc))
                return rc; // option processing triggered an early exit
            if (get_shell_run(shell_opts))
                break; // stop consuming arguments after `--run`
=======
    options opts = get_default_options();
    optional<std::string> c_output;
    optional<std::string> llvm_output;
    optional<std::string> arm64_output;
    optional<std::string> root_dir;
    buffer<string_ref> forwarded_args;
    buffer<name> error_kinds;

    while (!run) {  // stop consuming arguments after `--run`
        int c = getopt_long(argc, argv, g_opt_str, g_long_options, NULL);
        if (c == -1)
            break; // end of command line
        if (c == 0)
            continue; // long-only option
        switch (c) {
            case 'e':
                lean_set_exit_on_panic(true);
                break;
            case 'j':
                num_threads = static_cast<unsigned>(atoi(optarg));
                forwarded_args.push_back(string_ref("-j" + std::string(optarg)));
                break;
            case 'v':
                display_header();
                return 0;
            case 'V':
                display_version(std::cout);
                return 0;
            case 'g':
                std::cout << LEAN_GITHASH << "\n";
                return 0;
            case 'h':
                display_help(/* useStderr */ false);
                return 0;
            case 'f':
                display_features(std::cout);
                return 0;
            case 'c':
                check_optarg("c");
                c_output = optarg;
                break;
            case 'b':
                check_optarg("bc");
                llvm_output = optarg;
                break;
            case 'A':
                check_optarg("arm64");
                arm64_output = optarg;
                break;
            case 's':
                lean::lthread::set_thread_stack_size(
                        static_cast<size_t>((atoi(optarg) / 4) * 4) * static_cast<size_t>(1024));
                forwarded_args.push_back(string_ref("-s" + std::string(optarg)));
                break;
            case 'I':
                use_stdin = true;
                break;
            case 'r':
                run = true;
                break;
            case 'o':
                olean_fn = optarg;
                break;
            case 'i':
                ilean_fn = optarg;
                break;
            case 'R':
                root_dir = optarg;
                forwarded_args.push_back(string_ref("-R" + std::string(optarg)));
                break;
            case 'M':
                check_optarg("M");
                opts = opts.update(get_max_memory_opt_name(), static_cast<unsigned>(atoi(optarg)));
                forwarded_args.push_back(string_ref("-M" + std::string(optarg)));
                break;
            case 'T':
                check_optarg("T");
                opts = opts.update(get_timeout_opt_name(), static_cast<unsigned>(atoi(optarg)));
                forwarded_args.push_back(string_ref("-T" + std::string(optarg)));
                break;
            case 't':
                check_optarg("t");
                trust_lvl = atoi(optarg);
                forwarded_args.push_back(string_ref("-t" + std::string(optarg)));
                break;
            case 'q':
                opts = opts.update(lean::get_verbose_opt_name(), false);
                break;
            case 'd':
                only_deps = true;
                break;
            case 'J':
                only_deps = true;
                deps_json = true;
                break;
            case 'a':
                stats = true;
                break;
            case 'D':
                try {
                    check_optarg("D");
                    opts = set_config_option(opts, optarg);
                    forwarded_args.push_back(string_ref("-D" + std::string(optarg)));
                } catch (lean::exception & ex) {
                    std::cerr << ex.what() << std::endl;
                    return 1;
                }
                break;
            case 'S':
                run_server = 1;
                break;
            case 'W':
                run_server = 2;
                break;
            case 'P':
                opts = opts.update("profiler", true);
                break;
#if defined(LEAN_DEBUG)
            case 'B':
                check_optarg("B");
                lean::enable_debug(optarg);
                break;
#endif
            case 'p':
                check_optarg("p");
                lean::load_plugin(optarg);
                forwarded_args.push_back(string_ref("--plugin=" + std::string(optarg)));
                break;
            case 'l':
                check_optarg("l");
                lean::load_dynlib(optarg);
                forwarded_args.push_back(string_ref("--load-dynlib=" + std::string(optarg)));
                break;
            case 'u':
                check_optarg("u");
                setup_fn = optarg;
                break;
            case 'E':
                check_optarg("E");
                error_kinds.push_back(string_to_name(std::string(optarg)));
                break;
            default:
                std::cerr << "Unknown command line option\n";
                display_help(/* useStderr */ true);
                return 1;
>>>>>>> 0944daa7b7 (WIP: ARM64 backend fixes - 6/7 tests passing)
        }
    } catch (lean::throwable & ex) {
        std::cerr << "error: " << ex.what() << std::endl;
        return 1;
    }

    lean::io_mark_end_initialization();

    if (get_shell_profiler(shell_opts)) {
        g_lean_report_task_get_blocked_time = report_task_get_blocked_time;
        report_profiling_time("initialization", init_time);
    }

    scoped_task_manager scope_task_man(get_shell_num_threads(shell_opts));

    try {
<<<<<<< HEAD
        return run_shell_main(argc - optind, argv + optind, shell_opts);
=======
        return run_shell_main(
            argc - optind, argv + optind,
            forwarded_args, run_server, print_prefix, print_libdir,
            use_stdin, only_deps, only_src_deps, deps_json,
            opts, trust_lvl, root_dir, setup_fn,
            olean_fn, ilean_fn, c_output, llvm_output, arm64_output,
            json_output, error_kinds, stats, run
        );
>>>>>>> 0944daa7b7 (WIP: ARM64 backend fixes - 6/7 tests passing)
    } catch (lean::throwable & ex) {
        std::cerr << ex.what() << "\n";
    } catch (std::bad_alloc & ex) {
        std::cerr << "out of memory" << std::endl;
    }
    return 1;
}
