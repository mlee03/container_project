#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "w3nco::w3nco_4" for configuration "Release"
set_property(TARGET w3nco::w3nco_4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(w3nco::w3nco_4 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libw3nco_4.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS w3nco::w3nco_4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_w3nco::w3nco_4 "${_IMPORT_PREFIX}/lib/libw3nco_4.a" )

# Import target "w3nco::w3nco_8" for configuration "Release"
set_property(TARGET w3nco::w3nco_8 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(w3nco::w3nco_8 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libw3nco_8.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS w3nco::w3nco_8 )
list(APPEND _IMPORT_CHECK_FILES_FOR_w3nco::w3nco_8 "${_IMPORT_PREFIX}/lib/libw3nco_8.a" )

# Import target "w3nco::w3nco_d" for configuration "Release"
set_property(TARGET w3nco::w3nco_d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(w3nco::w3nco_d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libw3nco_d.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS w3nco::w3nco_d )
list(APPEND _IMPORT_CHECK_FILES_FOR_w3nco::w3nco_d "${_IMPORT_PREFIX}/lib/libw3nco_d.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
