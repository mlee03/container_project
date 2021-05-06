
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

#upp-config.cmake
#
# Imported interface targets provided:
#  * upp::upp - library target

# Include targets file.  This will create IMPORTED target upp
include("${CMAKE_CURRENT_LIST_DIR}/upp-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/upp-config-version.cmake")
include(CMakeFindDependencyMacro)

find_dependency(MPI)

# ON/OFF implies upp was compiled with/without OpenMP
if(ON)
  find_dependency(OpenMP COMPONENTS Fortran)
endif()

find_dependency(NetCDF COMPONENTS Fortran)

find_dependency(w3nco CONFIG)
find_dependency(g2 CONFIG)
find_dependency(g2tmpl CONFIG)
find_dependency(bacio CONFIG)
find_dependency(ip CONFIG)
find_dependency(sp CONFIG)
find_dependency(w3emc CONFIG)
find_dependency(crtm CONFIG)

# nceppost library does not depend on these, the executable does.
#find_dependency(sigio CONFIG)
#find_dependency(sfcio CONFIG)
#find_dependency(nemsio CONFIG)
#find_dependency(gfsio CONFIG)

# Get the build type from library target
get_target_property(upp_BUILD_TYPES upp::upp IMPORTED_CONFIGURATIONS)

check_required_components("upp")

get_target_property(location upp::upp LOCATION)
message(STATUS "Found upp: ${location} (found version \"${PACKAGE_VERSION}\")")
