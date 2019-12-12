#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Darknet::dark" for configuration ""
set_property(TARGET Darknet::dark APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(Darknet::dark PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/home/ankit/Documents/object detection/darknet-master/libdark.so"
  IMPORTED_SONAME_NOCONFIG "libdark.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS Darknet::dark )
list(APPEND _IMPORT_CHECK_FILES_FOR_Darknet::dark "/home/ankit/Documents/object detection/darknet-master/libdark.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
