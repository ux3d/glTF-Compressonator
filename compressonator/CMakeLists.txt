


include("${cmake_utils}")
include("${cmake_platform}")

add_subdirectory(codec)
add_subdirectory(common)
add_subdirectory(compress)
add_subdirectory(decode)
add_subdirectory(math)
add_subdirectory(mesh)

set(target_sources "")
set(target_includes "")

add_sources("source/*.cpp" "target_sources")
add_sources("include/compressonator/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(comp OBJECT "${target_sources}")

target_include_directories(comp PUBLIC "${target_includes}")

set_directory_structure(comp)



target_link_libraries(comp PRIVATE codec)
target_link_libraries(comp PRIVATE compress)
target_link_libraries(comp PRIVATE decode)
target_link_libraries(comp PRIVATE math)
target_link_libraries(comp PRIVATE mesh)