
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

#w3nco-config.cmake
#
# Output variables set:
#  * w3nco_FOUND
#
# Imported interface targets provided:
#  * w3nco::w3nco_4 - real32 library target
#  * w3nco::w3nco_8 - real64 library target
#  * w3nco::w3nco_d - mixed library target

# Include targets file.  This will create IMPORTED target w3nco
include("${CMAKE_CURRENT_LIST_DIR}/w3nco-targets.cmake")

get_target_property(w3nco_BUILD_TYPES w3nco::w3nco_4 IMPORTED_CONFIGURATIONS)

check_required_components("w3nco")

get_target_property(location w3nco::w3nco_4 LOCATION)
message(STATUS "Found w3nco: ${location} (found version \"2.4.0\")")
