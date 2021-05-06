
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

#wgrib2-config.cmake
#
# Imported interface targets provided:

# Include targets file.  This will create IMPORTED target wgrib2
include("${CMAKE_CURRENT_LIST_DIR}/wgrib2-targets.cmake")

include(CMakeFindDependencyMacro)

#get_target_property(wgrib2_BUILD_TYPES wgrib2::wgrib2 IMPORTED_CONFIGURATIONS)

check_required_components("wgrib2")

get_target_property(location wgrib2::wgrib2_lib LOCATION)
message(STATUS "Found wgrib2: ${location} (found version 2.0.8)")
