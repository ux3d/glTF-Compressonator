include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/plugin/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(plugin OBJECT "${target_sources}")
target_include_directories(plugin PUBLIC "${target_includes}")

find_package(Boost)
target_include_directories(plugin PRIVATE ${Boost_INCLUDE_DIRS})
target_link_libraries(plugin PRIVATE ${Boost_LIBRARIES})

target_link_libraries(plugin PRIVATE comp)

set_directory_structure(plugin)