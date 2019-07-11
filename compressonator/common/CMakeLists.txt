include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/common/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(common OBJECT "${target_sources}")
target_include_directories(common PUBLIC "${target_includes}")

set_directory_structure(common)