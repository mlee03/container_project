#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "crtm::crtm" for configuration "Release"
set_property(TARGET crtm::crtm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(crtm::crtm PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcrtm.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS crtm::crtm )
list(APPEND _IMPORT_CHECK_FILES_FOR_crtm::crtm "${_IMPORT_PREFIX}/lib/libcrtm.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
