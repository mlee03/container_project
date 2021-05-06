#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "g2c::g2c" for configuration "Release"
set_property(TARGET g2c::g2c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(g2c::g2c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libg2c.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS g2c::g2c )
list(APPEND _IMPORT_CHECK_FILES_FOR_g2c::g2c "${_IMPORT_PREFIX}/lib/libg2c.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
