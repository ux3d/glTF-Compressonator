include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/mesh/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(mesh OBJECT "${target_sources}")
target_include_directories(mesh PUBLIC "${target_includes}")

target_link_libraries(mesh PRIVATE math)

set_directory_structure(mesh)