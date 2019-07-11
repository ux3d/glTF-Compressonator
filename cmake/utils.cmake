# please note that macros don't have their own scope – this is extremely important when using recursion!

macro(add_sources expression sources)
	file(GLOB source_files RELATIVE "${CMAKE_CURRENT_LIST_DIR}" "${expression}")
	set(${sources} "${${sources}};${source_files}")
endmacro()

macro(add_include_folder include_folder includes)
	set(${includes} "${${includes}};${CMAKE_CURRENT_LIST_DIR}/${include_folder}")
endmacro()

macro(get_relative_path relative_path)
	file(RELATIVE_PATH relative_path ${CMAKE_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})
endmacro()

macro(set_target_folder target path)
	set_target_properties(${target} PROPERTIES FOLDER "${path}")
endmacro()

macro(set_directory_structure target)
	get_relative_path(relative_path)
	set_target_folder(${target} ${relative_path})
endmacro()

