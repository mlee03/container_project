
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

#  * wrf_io::wrf_io - library target

# Include targets file.  This will create IMPORTED target wrf_io
include("${CMAKE_CURRENT_LIST_DIR}/wrf_io-targets.cmake")
include(CMakeFindDependencyMacro)

get_target_property(wrf_io_BUILD_TYPES wrf_io::wrf_io IMPORTED_CONFIGURATIONS)

if(ON)
  find_dependency(OpenMP COMPONENTS Fortran)
endif()

find_dependency(NetCDF COMPONENTS Fortran)

check_required_components("wrf_io")

get_target_property(location wrf_io::wrf_io LOCATION)
message(STATUS "Found wrf_io: ${location} (found version \"1.1.1\")")
