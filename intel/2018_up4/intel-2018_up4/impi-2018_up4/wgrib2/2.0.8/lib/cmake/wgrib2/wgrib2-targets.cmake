# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget wgrib2::gctpc wgrib2::wgrib2_lib wgrib2::wgrib2_exe wgrib2::obj_lib wgrib2::wgrib2_api)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target wgrib2::gctpc
add_library(wgrib2::gctpc INTERFACE IMPORTED)

set_target_properties(wgrib2::gctpc PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/impi-2018_up4/wgrib2/2.0.8/include"
)

# Create imported target wgrib2::wgrib2_lib
add_library(wgrib2::wgrib2_lib STATIC IMPORTED)

set_target_properties(wgrib2::wgrib2_lib PROPERTIES
  INTERFACE_LINK_LIBRARIES "wgrib2::gctpc"
)

# Create imported target wgrib2::wgrib2_exe
add_executable(wgrib2::wgrib2_exe IMPORTED)

# Create imported target wgrib2::obj_lib
add_library(wgrib2::obj_lib INTERFACE IMPORTED)

set_target_properties(wgrib2::obj_lib PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "USE_REGEX;USE_SPECTRAL=1;IPOLATES_LIB=\"ipolates_lib\";USE_IPOLATES=3;USE_JASPER;JAS_VERSION_MAJOR=2;USE_OPENMP;USE_PNG"
  INTERFACE_INCLUDE_DIRECTORIES "/home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/jasper/2.0.22/include"
  INTERFACE_LINK_LIBRARIES "/home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/jasper/2.0.22/lib64/libjasper.a;/home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/jpeg/9.1.0/lib/libjpeg.a;PNG::PNG;OpenMP::OpenMP_C;ip2::ip2_d;wgrib2::gctpc;-lm"
)

# Create imported target wgrib2::wgrib2_api
add_library(wgrib2::wgrib2_api STATIC IMPORTED)

set_target_properties(wgrib2::wgrib2_api PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/Mikyung.Lee/hpc-stack/intel/2018_up4/intel-2018_up4/impi-2018_up4/wgrib2/2.0.8/include"
  INTERFACE_LINK_LIBRARIES "wgrib2::wgrib2_lib"
)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/wgrib2-targets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
