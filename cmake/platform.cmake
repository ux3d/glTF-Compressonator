
if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    add_definitions(-DPLATFORM_IS_MACOS=1 )
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    add_definitions(-DPLATFORM_IS_WINDOWS=1 )
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    add_definitions(-DPLATFORM_IS_LINUX=1 )
endif()