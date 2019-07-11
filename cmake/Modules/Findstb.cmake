#[=======================================================================[.rst:
Findstb
----------

Try to find the stb library

Result Variables
^^^^^^^^^^^^^^^^

This module defines the following variables::

  stb_FOUND          - True if the library was found
  stb_INCLUDE_DIRS   - include directories for the library

The module will also define the cache variables::

  stb_INCLUDE_DIR    - the include directory

#]=======================================================================]

if(NOT EXISTS "${stb_INCLUDE_DIR}")
    find_path(stb_INCLUDE_DIR
            NAMES stb.h
            DOC "stb library header files"
            PATHS ${CMAKE_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/../ ${CMAKE_CURRENT_SOURCE_DIR}/../../
            PATH_SUFFIXES thirdparty/stb
            )
endif()

if(EXISTS "${stb_INCLUDE_DIR}")
    set(stb_FOUND 1)
else()
    set(stb_FOUND 0)
endif()

set(stb_INCLUDE_DIRS ${stb_INCLUDE_DIR})