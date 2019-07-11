include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/decode/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(decode OBJECT "${target_sources}")
target_include_directories(decode PUBLIC "${target_includes}")

target_link_libraries(decode PRIVATE math)

set_directory_structure(decode)