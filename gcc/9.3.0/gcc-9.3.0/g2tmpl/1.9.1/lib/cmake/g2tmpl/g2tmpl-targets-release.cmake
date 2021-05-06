#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "g2tmpl::g2tmpl" for configuration "Release"
set_property(TARGET g2tmpl::g2tmpl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(g2tmpl::g2tmpl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libg2tmpl.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS g2tmpl::g2tmpl )
list(APPEND _IMPORT_CHECK_FILES_FOR_g2tmpl::g2tmpl "${_IMPORT_PREFIX}/lib/libg2tmpl.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
