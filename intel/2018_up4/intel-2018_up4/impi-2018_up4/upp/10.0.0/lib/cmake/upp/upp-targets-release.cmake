#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "upp::upp" for configuration "Release"
set_property(TARGET upp::upp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(upp::upp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libupp.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS upp::upp )
list(APPEND _IMPORT_CHECK_FILES_FOR_upp::upp "${_IMPORT_PREFIX}/lib/libupp.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
