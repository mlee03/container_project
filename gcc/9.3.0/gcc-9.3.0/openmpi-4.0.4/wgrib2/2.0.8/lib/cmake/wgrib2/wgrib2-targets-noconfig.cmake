#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "wgrib2::wgrib2_lib" for configuration ""
set_property(TARGET wgrib2::wgrib2_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(wgrib2::wgrib2_lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib64/libwgrib2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS wgrib2::wgrib2_lib )
list(APPEND _IMPORT_CHECK_FILES_FOR_wgrib2::wgrib2_lib "${_IMPORT_PREFIX}/lib64/libwgrib2.a" )

# Import target "wgrib2::wgrib2_exe" for configuration ""
set_property(TARGET wgrib2::wgrib2_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(wgrib2::wgrib2_exe PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/wgrib2"
  )

list(APPEND _IMPORT_CHECK_TARGETS wgrib2::wgrib2_exe )
list(APPEND _IMPORT_CHECK_FILES_FOR_wgrib2::wgrib2_exe "${_IMPORT_PREFIX}/bin/wgrib2" )

# Import target "wgrib2::wgrib2_api" for configuration ""
set_property(TARGET wgrib2::wgrib2_api APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(wgrib2::wgrib2_api PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C;Fortran"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib64/libwgrib2_api.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS wgrib2::wgrib2_api )
list(APPEND _IMPORT_CHECK_FILES_FOR_wgrib2::wgrib2_api "${_IMPORT_PREFIX}/lib64/libwgrib2_api.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
