include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/math/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(math OBJECT "${target_sources}")
target_include_directories(math PUBLIC "${target_includes}")

set_directory_structure(math)