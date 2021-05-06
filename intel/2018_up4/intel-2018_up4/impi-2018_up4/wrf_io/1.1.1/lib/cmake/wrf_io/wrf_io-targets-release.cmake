#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "wrf_io::wrf_io" for configuration "Release"
set_property(TARGET wrf_io::wrf_io APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(wrf_io::wrf_io PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libwrf_io.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS wrf_io::wrf_io )
list(APPEND _IMPORT_CHECK_FILES_FOR_wrf_io::wrf_io "${_IMPORT_PREFIX}/lib/libwrf_io.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
