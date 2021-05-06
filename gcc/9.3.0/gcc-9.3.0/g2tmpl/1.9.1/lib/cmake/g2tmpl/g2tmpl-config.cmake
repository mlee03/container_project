
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was PackageConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

#g2tmpl-config.cmake
#
# Imported interface targets provided:
#  * g2tmpl::g2tmpl - library target

# Include targets file.  This will create IMPORTED target g2tmpl
include("${CMAKE_CURRENT_LIST_DIR}/g2tmpl-targets.cmake")

get_target_property(g2tmpl_BUILD_TYPES g2tmpl::g2tmpl IMPORTED_CONFIGURATIONS)

check_required_components("g2tmpl")

get_target_property(location g2tmpl::g2tmpl LOCATION)
message(STATUS "Found g2tmpl: ${location} (found version \"1.9.0\")")
