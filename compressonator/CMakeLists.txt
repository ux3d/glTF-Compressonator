

add_library(comp "${CMAKE_CURRENT_LIST_DIR}/compressonator.cpp")
add_subdirectory(codec)
add_subdirectory(compress)
add_subdirectory(decode)
add_subdirectory(math)
add_subdirectory(mesh)

target_link_libraries(comp PRIVATE codec)
target_link_libraries(comp PRIVATE compress)
target_link_libraries(comp PRIVATE decode)
target_link_libraries(comp PRIVATE math)
target_link_libraries(comp PRIVATE mesh)