#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "landsfcutil::landsfcutil_4" for configuration "Release"
set_property(TARGET landsfcutil::landsfcutil_4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(landsfcutil::landsfcutil_4 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblandsfcutil_4.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS landsfcutil::landsfcutil_4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_landsfcutil::landsfcutil_4 "${_IMPORT_PREFIX}/lib/liblandsfcutil_4.a" )

# Import target "landsfcutil::landsfcutil_d" for configuration "Release"
set_property(TARGET landsfcutil::landsfcutil_d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(landsfcutil::landsfcutil_d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblandsfcutil_d.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS landsfcutil::landsfcutil_d )
list(APPEND _IMPORT_CHECK_FILES_FOR_landsfcutil::landsfcutil_d "${_IMPORT_PREFIX}/lib/liblandsfcutil_d.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
