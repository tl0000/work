aux_source_directory (. SRC_LIST)

include_directories (../include)

add_library (testFunc_shared SHARED ${SRC_LIST})
add_library (testFunc_static STATIC ${SRC_LIST})

set_target_properties (testFunc_shared PROPERTIES OUTPUT_NAME "testFunc")
set_target_properties (testFunc_static PROPERTIES OUTPUT_NAME "testFunc")

set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
