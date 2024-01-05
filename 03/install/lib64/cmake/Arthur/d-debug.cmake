#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Arthur::d" for configuration "Debug"
set_property(TARGET Arthur::d APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Arthur::d PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib64/libd.so"
  IMPORTED_SONAME_DEBUG "libd.so"
  )

list(APPEND _cmake_import_check_targets Arthur::d )
list(APPEND _cmake_import_check_files_for_Arthur::d "${_IMPORT_PREFIX}/lib64/libd.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
