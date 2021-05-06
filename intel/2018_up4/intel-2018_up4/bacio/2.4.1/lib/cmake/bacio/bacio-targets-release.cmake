#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bacio::bacio_4" for configuration "Release"
set_property(TARGET bacio::bacio_4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(bacio::bacio_4 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbacio_4.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bacio::bacio_4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_bacio::bacio_4 "${_IMPORT_PREFIX}/lib/libbacio_4.a" )

# Import target "bacio::bacio_8" for configuration "Release"
set_property(TARGET bacio::bacio_8 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(bacio::bacio_8 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbacio_8.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bacio::bacio_8 )
list(APPEND _IMPORT_CHECK_FILES_FOR_bacio::bacio_8 "${_IMPORT_PREFIX}/lib/libbacio_8.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
