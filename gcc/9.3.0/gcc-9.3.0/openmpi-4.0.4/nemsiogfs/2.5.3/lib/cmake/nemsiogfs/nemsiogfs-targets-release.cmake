#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nemsiogfs::nemsiogfs" for configuration "Release"
set_property(TARGET nemsiogfs::nemsiogfs APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(nemsiogfs::nemsiogfs PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libnemsiogfs.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS nemsiogfs::nemsiogfs )
list(APPEND _IMPORT_CHECK_FILES_FOR_nemsiogfs::nemsiogfs "${_IMPORT_PREFIX}/lib/libnemsiogfs.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
