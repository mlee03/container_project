#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sfcio::sfcio" for configuration "Release"
set_property(TARGET sfcio::sfcio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(sfcio::sfcio PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libsfcio.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS sfcio::sfcio )
list(APPEND _IMPORT_CHECK_FILES_FOR_sfcio::sfcio "${_IMPORT_PREFIX}/lib/libsfcio.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
