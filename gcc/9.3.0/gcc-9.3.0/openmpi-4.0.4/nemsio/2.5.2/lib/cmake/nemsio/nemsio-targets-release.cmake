#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nemsio::nemsio" for configuration "Release"
set_property(TARGET nemsio::nemsio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nemsio::nemsio PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libnemsio.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS nemsio::nemsio )
list(APPEND _IMPORT_CHECK_FILES_FOR_nemsio::nemsio "${_IMPORT_PREFIX}/lib/libnemsio.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
