
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

#  * ip2::ip2_4 - real32 library target
#  * ip2::ip2_8 - real64 library target
#  * ip2::ip2_d - mixed precision library target

# Include targets file.  This will create IMPORTED target ip2
include("${CMAKE_CURRENT_LIST_DIR}/ip2-targets.cmake")

include(CMakeFindDependencyMacro)

# ON/OFF implies ip was compiled with/without OPENMP
if(ON)
  find_dependency(OpenMP COMPONENTS Fortran)
endif()

find_dependency(sp CONFIG)

get_target_property(ip2_BUILD_TYPES ip2::ip2_4 IMPORTED_CONFIGURATIONS)

check_required_components("ip2")

get_target_property(location ip2::ip2_4 LOCATION)
message(STATUS "Found ip2: ${location} (found version \"1.1.2\")")
