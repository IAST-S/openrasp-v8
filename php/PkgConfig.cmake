cmake_minimum_required(VERSION 3.0.0)

list(TRANSFORM INCLUDE_DIRECTORIES PREPEND "-I")
list(JOIN INCLUDE_DIRECTORIES " " CFLAGS)

list(APPEND LINK_LIBRARIES ${TARGET_FILE})
list(JOIN LINK_LIBRARIES " " LIBS)

set(PREFIX ${CMAKE_CURRENT_LIST_DIR})
configure_file(${PREFIX}/openrasp-v8.pc.in ${PREFIX}/openrasp-v8.pc)