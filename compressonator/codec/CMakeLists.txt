include("${cmake_utils}")
include("${cmake_platform}")

add_sources("source/*.cpp" "target_sources")
add_sources("include/math/*.h" "target_sources")
add_include_folder("include" "target_includes")

add_library(codec OBJECT "${target_sources}")
target_include_directories(codec PUBLIC "${target_includes}")

target_link_libraries(codec PRIVATE math)
target_link_libraries(codec PRIVATE common)

find_package(OpenEXR)
target_include_directories(codec PRIVATE ${OPENEXR_INCLUDE_DIR})
target_link_libraries(codec PRIVATE ${OPENEXR_LIBRARIES})

set_directory_structure(codec)