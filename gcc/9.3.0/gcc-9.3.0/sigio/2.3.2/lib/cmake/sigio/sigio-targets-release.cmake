#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sigio::sigio" for configuration "Release"
set_property(TARGET sigio::sigio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(sigio::sigio PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsigio.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS sigio::sigio )
list(APPEND _IMPORT_CHECK_FILES_FOR_sigio::sigio "${_IMPORT_PREFIX}/lib/libsigio.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
