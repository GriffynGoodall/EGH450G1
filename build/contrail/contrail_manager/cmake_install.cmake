# Install script for directory: /home/griff/catkin_ws/src/contrail/contrail_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/griff/catkin_ws/install")
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
  include("/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager/action" TYPE FILE FILES "/home/griff/catkin_ws/src/contrail/contrail_manager/action/Trajectory.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager/msg" TYPE FILE FILES
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryAction.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryActionGoal.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryActionResult.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryActionFeedback.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryGoal.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryResult.msg"
    "/home/griff/catkin_ws/devel/share/contrail_manager/msg/TrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager/cmake" TYPE FILE FILES "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/installspace/contrail_manager-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/include/contrail_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/share/roseus/ros/contrail_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/share/common-lisp/ros/contrail_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/share/gennodejs/ros/contrail_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager" FILES_MATCHING REGEX "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/contrail_manager" TYPE FILE FILES "/home/griff/catkin_ws/devel/include/contrail_manager/ManagerParamsConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/contrail_manager" TYPE DIRECTORY FILES "/home/griff/catkin_ws/devel/lib/python2.7/dist-packages/contrail_manager/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/installspace/contrail_manager.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager/cmake" TYPE FILE FILES "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/installspace/contrail_manager-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager/cmake" TYPE FILE FILES
    "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/installspace/contrail_managerConfig.cmake"
    "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/installspace/contrail_managerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/contrail_manager" TYPE FILE FILES "/home/griff/catkin_ws/src/contrail/contrail_manager/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/contrail_manager" TYPE PROGRAM FILES
    "/home/griff/catkin_ws/src/contrail/contrail_manager/scripts/converter_path_spline"
    "/home/griff/catkin_ws/src/contrail/contrail_manager/scripts/converter_waypoints_path"
    "/home/griff/catkin_ws/src/contrail/contrail_manager/scripts/load_spline"
    "/home/griff/catkin_ws/src/contrail/contrail_manager/scripts/load_waypoints"
    "/home/griff/catkin_ws/src/contrail/contrail_manager/scripts/waypoint_dispatcher"
    )
endif()

