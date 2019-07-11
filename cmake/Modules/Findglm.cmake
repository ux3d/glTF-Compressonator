#[=======================================================================[.rst:
Findglm
----------

Try to find the glm header-only-library

Result Variables
^^^^^^^^^^^^^^^^

This module defines the following variables::

  glm_FOUND          - True if glm was found
  glm_INCLUDE_DIRS   - include directories for glm

The module will also define one cache variables::

  glm_INCLUDE_DIR    - the include directory

#]=======================================================================]

if(NOT EXISTS "${glm_INCLUDE_DIR}")
    find_path(glm_INCLUDE_DIR
            NAMES "glm.hpp"
            DOC "glm library header files"
			PATHS ${CMAKE_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/../ ${CMAKE_CURRENT_SOURCE_DIR}/../../
            PATH_SUFFIXES "thirdparty/glm/glm"
            )
endif()

if(EXISTS "${glm_INCLUDE_DIR}")
    set(glm_FOUND 1)
else()
    set(glm_FOUND 0)
endif()

set(glm_INCLUDE_DIRS ${glm_INCLUDE_DIR})