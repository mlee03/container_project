#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bufr::bufr_4_DA" for configuration "Release"
set_property(TARGET bufr::bufr_4_DA APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(bufr::bufr_4_DA PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbufr_4_DA.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bufr::bufr_4_DA )
list(APPEND _IMPORT_CHECK_FILES_FOR_bufr::bufr_4_DA "${_IMPORT_PREFIX}/lib/libbufr_4_DA.a" )

# Import target "bufr::bufr_8_DA" for configuration "Release"
set_property(TARGET bufr::bufr_8_DA APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(bufr::bufr_8_DA PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbufr_8_DA.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bufr::bufr_8_DA )
list(APPEND _IMPORT_CHECK_FILES_FOR_bufr::bufr_8_DA "${_IMPORT_PREFIX}/lib/libbufr_8_DA.a" )

# Import target "bufr::bufr_d_DA" for configuration "Release"
set_property(TARGET bufr::bufr_d_DA APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(bufr::bufr_d_DA PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libbufr_d_DA.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS bufr::bufr_d_DA )
list(APPEND _IMPORT_CHECK_FILES_FOR_bufr::bufr_d_DA "${_IMPORT_PREFIX}/lib/libbufr_d_DA.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
