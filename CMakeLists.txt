cmake_minimum_required(VERSION 3.14)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")
set(cmake_utils "${CMAKE_CURRENT_LIST_DIR}/cmake/utils.cmake")
set(cmake_platform "${CMAKE_CURRENT_LIST_DIR}/cmake/platform.cmake")

add_subdirectory(third_party)
add_subdirectory(compressonator)
add_subdirectory(plugin)

add_subdirectory(app)