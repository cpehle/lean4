if(NOT DEFINED MIMALLOC_SOURCE_DIR)
  message(FATAL_ERROR "MIMALLOC_SOURCE_DIR is not set")
endif()
if(NOT DEFINED MI_SMALL_WSIZE_MAX)
  message(FATAL_ERROR "MI_SMALL_WSIZE_MAX is not set")
endif()

set(mimalloc_h "${MIMALLOC_SOURCE_DIR}/include/mimalloc.h")
set(internal_h "${MIMALLOC_SOURCE_DIR}/include/mimalloc/internal.h")
set(init_c "${MIMALLOC_SOURCE_DIR}/src/init.c")

foreach(file IN LISTS mimalloc_h internal_h init_c)
  if(NOT EXISTS "${file}")
    message(FATAL_ERROR "mimalloc source file does not exist: ${file}")
  endif()
endforeach()

function(replace_or_confirm file needle replacement)
  file(READ "${file}" content)
  string(FIND "${content}" "${replacement}" replacement_pos)
  if(NOT replacement_pos EQUAL -1)
    return()
  endif()
  string(FIND "${content}" "${needle}" needle_pos)
  if(needle_pos EQUAL -1)
    message(FATAL_ERROR "could not find expected mimalloc patch context in ${file}")
  endif()
  string(REPLACE "${needle}" "${replacement}" new_content "${content}")
  file(WRITE "${file}" "${new_content}")
endfunction()

replace_or_confirm(
  "${mimalloc_h}"
  "#define MI_SMALL_WSIZE_MAX  (128)"
  "#define MI_SMALL_WSIZE_MAX  (${MI_SMALL_WSIZE_MAX})"
)

replace_or_confirm(
  "${internal_h}"
  "#define MI_INIT256(x) MI_INIT128(x),MI_INIT128(x)
#define MI_INIT74(x)  MI_INIT64(x),MI_INIT8(x),x(),x()"
  "#define MI_INIT256(x) MI_INIT128(x),MI_INIT128(x)
#define MI_INIT512(x) MI_INIT256(x),MI_INIT256(x)
#define MI_INIT1024(x) MI_INIT512(x),MI_INIT512(x)
#define MI_INIT74(x)  MI_INIT64(x),MI_INIT8(x),x(),x()"
)

replace_or_confirm(
  "${init_c}"
  "#if (MI_SMALL_WSIZE_MAX==128)
#if (MI_PADDING>0) && (MI_INTPTR_SIZE >= 8)
#define MI_SMALL_PAGES_EMPTY  { MI_INIT128(MI_PAGE_EMPTY), MI_PAGE_EMPTY(), MI_PAGE_EMPTY() }
#elif (MI_PADDING>0)
#define MI_SMALL_PAGES_EMPTY  { MI_INIT128(MI_PAGE_EMPTY), MI_PAGE_EMPTY(), MI_PAGE_EMPTY(), MI_PAGE_EMPTY() }
#else
#define MI_SMALL_PAGES_EMPTY  { MI_INIT128(MI_PAGE_EMPTY), MI_PAGE_EMPTY() }
#endif
#else
#error \"define right initialization sizes corresponding to MI_SMALL_WSIZE_MAX\"
#endif"
  "#if (MI_SMALL_WSIZE_MAX==128)
#define MI_SMALL_PAGES_EMPTY_BASE MI_INIT128(MI_PAGE_EMPTY)
#elif (MI_SMALL_WSIZE_MAX==512)
#define MI_SMALL_PAGES_EMPTY_BASE MI_INIT512(MI_PAGE_EMPTY)
#elif (MI_SMALL_WSIZE_MAX==1024)
#define MI_SMALL_PAGES_EMPTY_BASE MI_INIT1024(MI_PAGE_EMPTY)
#else
#error \"define right initialization sizes corresponding to MI_SMALL_WSIZE_MAX\"
#endif

#if (MI_PADDING>0) && (MI_INTPTR_SIZE >= 8)
#define MI_SMALL_PAGES_EMPTY  { MI_SMALL_PAGES_EMPTY_BASE, MI_PAGE_EMPTY(), MI_PAGE_EMPTY() }
#elif (MI_PADDING>0)
#define MI_SMALL_PAGES_EMPTY  { MI_SMALL_PAGES_EMPTY_BASE, MI_PAGE_EMPTY(), MI_PAGE_EMPTY(), MI_PAGE_EMPTY() }
#else
#define MI_SMALL_PAGES_EMPTY  { MI_SMALL_PAGES_EMPTY_BASE, MI_PAGE_EMPTY() }
#endif"
)
