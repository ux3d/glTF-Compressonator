list(APPEND Compressonator_SOURCES "Source/Compressonator.cpp")

add_library(Compressonator ${Compressonator_SOURCES})

target_include_directories(Compressonator PRIVATE "Header")
target_include_directories(Compressonator PRIVATE "Header/Codec")
target_include_directories(Compressonator PRIVATE "Header/Codec/Buffer")
target_include_directories(Compressonator PRIVATE "Header/Internal")

target_link_libraries(Compressonator PRIVATE Half)