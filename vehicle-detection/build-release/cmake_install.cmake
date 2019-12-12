# Install script for directory: /home/ankit/Documents/object detection/darknet-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ankit/Documents/object detection/darknet-master")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/libdark.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master" TYPE SHARED_LIBRARY FILES "/home/ankit/Documents/object detection/darknet-master/build-release/libdark.so")
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/libdark.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/include/darknet/darknet.h;/home/ankit/Documents/object detection/darknet-master/include/darknet/yolo_v2_class.hpp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master/include/darknet" TYPE FILE FILES
    "/home/ankit/Documents/object detection/darknet-master/include/darknet.h"
    "/home/ankit/Documents/object detection/darknet-master/include/yolo_v2_class.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/uselib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master" TYPE EXECUTABLE FILES "/home/ankit/Documents/object detection/darknet-master/build-release/uselib")
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib"
         OLD_RPATH "/home/ankit/Documents/object detection/darknet-master/build-release:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/uselib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/darknet")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master" TYPE EXECUTABLE FILES "/home/ankit/Documents/object detection/darknet-master/build-release/darknet")
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/darknet")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets.cmake"
         "/home/ankit/Documents/object detection/darknet-master/build-release/CMakeFiles/Export/_home/ankit/Documents/object_detection/darknet-master/share/darknet/DarknetTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master/share/darknet" TYPE FILE FILES "/home/ankit/Documents/object detection/darknet-master/build-release/CMakeFiles/Export/_home/ankit/Documents/object_detection/darknet-master/share/darknet/DarknetTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetTargets-noconfig.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master/share/darknet" TYPE FILE FILES "/home/ankit/Documents/object detection/darknet-master/build-release/CMakeFiles/Export/_home/ankit/Documents/object_detection/darknet-master/share/darknet/DarknetTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetConfig.cmake;/home/ankit/Documents/object detection/darknet-master/share/darknet/DarknetConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ankit/Documents/object detection/darknet-master/share/darknet" TYPE FILE FILES
    "/home/ankit/Documents/object detection/darknet-master/build-release/CMakeFiles/DarknetConfig.cmake"
    "/home/ankit/Documents/object detection/darknet-master/build-release/DarknetConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ankit/Documents/object detection/darknet-master/build-release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
