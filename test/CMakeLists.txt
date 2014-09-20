cmake_minimum_required (VERSION 2.6)
project (cmake-vala-test)

list (APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/..")
find_package (Vala REQUIRED)
include (${VALA_USE_FILE})

# Static library
vala_add_library (test1 libtest1.vala
	CREATE_VAPI
	LIBRARY_NAME test1
	VAPI_PATH_VARIABLE test1_vapi
	PACKAGES
		gio-2.0
)

# Shared library
vala_add_library (test2 SHARED libtest2.vala
	CREATE_VAPI
	LIBRARY_NAME test2
	VAPI_PATH_VARIABLE test2_vapi
	PACKAGES
		gio-2.0
)

# Executable
vala_add_executable (test test.vala
	PACKAGES
		gio-2.0
	CUSTOM_VAPIS
		${test1_vapi}
		${test2_vapi}
)
target_link_libraries (test test1 test2)
