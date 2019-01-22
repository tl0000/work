cmake_minimum_required (VERSION 2.8)

aux_source_directory (. SRC_LIST)

# find testFunc.h
include_directories (${PROJECT_SOURCE_DIR}/include)

link_directories (${PROJECT_SOURCE_DIR}/lib)

add_executable (demo ${SRC_LIST})

target_link_libraries (demo testFunc)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
