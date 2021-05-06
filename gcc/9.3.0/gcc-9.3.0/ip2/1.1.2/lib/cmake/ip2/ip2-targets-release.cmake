#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ip2::ip2_4" for configuration "Release"
set_property(TARGET ip2::ip2_4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ip2::ip2_4 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libip2_4.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ip2::ip2_4 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ip2::ip2_4 "${_IMPORT_PREFIX}/lib/libip2_4.a" )

# Import target "ip2::ip2_8" for configuration "Release"
set_property(TARGET ip2::ip2_8 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ip2::ip2_8 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libip2_8.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ip2::ip2_8 )
list(APPEND _IMPORT_CHECK_FILES_FOR_ip2::ip2_8 "${_IMPORT_PREFIX}/lib/libip2_8.a" )

# Import target "ip2::ip2_d" for configuration "Release"
set_property(TARGET ip2::ip2_d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ip2::ip2_d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libip2_d.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ip2::ip2_d )
list(APPEND _IMPORT_CHECK_FILES_FOR_ip2::ip2_d "${_IMPORT_PREFIX}/lib/libip2_d.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
