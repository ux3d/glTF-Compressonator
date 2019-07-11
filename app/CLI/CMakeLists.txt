include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/CLI/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_executable(compressonator "${target_sources}")
target_include_directories(compressonator PUBLIC "${target_includes}")

target_link_libraries(compressonator PRIVATE comp)

set_directory_structure(compressonator)