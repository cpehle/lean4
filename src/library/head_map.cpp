/*
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Author: Leonardo de Moura
*/
#include "library/head_map.h"
#include "library/explicit.h"

namespace lean {
head_index::head_index(expr const & e) {
    expr f = get_app_fn(e);
    while (true) {
        f = unwrap_pos(f);
        if (is_as_atomic(f))
            f = get_app_fn(get_as_atomic_arg(f));
        else if (is_explicit(f))
            f = get_explicit_arg(f);
        else
            break;
    }
    m_kind = f.kind();
    if (is_constant(f))
        m_name = const_name(f);
    else if (is_local_or_fvar(f))
        m_name = local_or_fvar_name(f);
}

int head_index::cmp::operator()(head_index const & i1, head_index const & i2) const {
    if (i1.m_kind != i2.m_kind || (i1.m_kind != expr_kind::Const && i1.m_kind != expr_kind::FVar && i1.m_kind != expr_kind::Local))
        return static_cast<int>(i1.m_kind) - static_cast<int>(i2.m_kind);
    else
        return quick_cmp(i1.m_name, i2.m_name);
}
}
