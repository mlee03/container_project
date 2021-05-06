
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

#sfcio-config.cmake
# Imported interface targets provided:
#  * sfcio::sfcio

# Include targets file.  This will create IMPORTED target sfcio
include("${CMAKE_CURRENT_LIST_DIR}/sfcio-targets.cmake")

get_target_property(sfcio_BUILD_TYPES sfcio::sfcio IMPORTED_CONFIGURATIONS)

check_required_components("sfcio")

get_target_property(location sfcio::sfcio LOCATION)
message(STATUS "Found sfcio: ${location} (found version \"1.4.0\")")
