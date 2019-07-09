list(APPEND Compressonator_SOURCES "Source/Compressonator.cpp")

add_library(Compressonator ${Compressonator_SOURCES})

target_include_directories(Compressonator PUBLIC "Header")
target_include_directories(Compressonator PUBLIC "Header/Codec")
target_include_directories(Compressonator PUBLIC "Header/Codec/Buffer")
target_include_directories(Compressonator PRIVATE "Header/Internal")

target_link_libraries(Compressonator PUBLIC Half)
target_include_directories(Compressonator PUBLIC "${ilmbase_SOURCE_DIR}/Half")