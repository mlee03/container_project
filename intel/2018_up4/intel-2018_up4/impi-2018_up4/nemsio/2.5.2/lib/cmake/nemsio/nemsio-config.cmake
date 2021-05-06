
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

#nemsio-config.cmake
#
# Output variables set:
#  * nemsio_FOUND
#
# Imported interface targets provided:
#  * nemsio::nemsio

# Include targets file.  This will create IMPORTED target nemsio
include("${CMAKE_CURRENT_LIST_DIR}/nemsio-targets.cmake")

include(CMakeFindDependencyMacro)

find_dependency(bacio CONFIG)
find_dependency(w3nco CONFIG)
find_dependency(MPI COMPONENTS Fortran)

get_target_property(nemsio_BUILD_TYPES nemsio::nemsio IMPORTED_CONFIGURATIONS)

check_required_components("nemsio")

get_target_property(location nemsio::nemsio LOCATION)
message(STATUS "Found nemsio: ${location} (found version \"2.5.1\")")
