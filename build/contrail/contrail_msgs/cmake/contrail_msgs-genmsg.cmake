# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "contrail_msgs: 4 messages, 1 services")

set(MSG_I_FLAGS "-Icontrail_msgs:/home/griff/catkin_ws/src/contrail/contrail_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(contrail_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_custom_target(_contrail_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "contrail_msgs" "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" ""
)

get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_custom_target(_contrail_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "contrail_msgs" "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_custom_target(_contrail_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "contrail_msgs" "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" "contrail_msgs/Waypoint:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_custom_target(_contrail_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "contrail_msgs" "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_custom_target(_contrail_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "contrail_msgs" "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_cpp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_cpp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_cpp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
)

### Generating Services
_generate_srv_cpp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
)

### Generating Module File
_generate_module_cpp(contrail_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(contrail_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(contrail_msgs_generate_messages contrail_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_cpp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_cpp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_cpp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_cpp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_cpp _contrail_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(contrail_msgs_gencpp)
add_dependencies(contrail_msgs_gencpp contrail_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS contrail_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
)
_generate_msg_eus(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
)
_generate_msg_eus(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
)
_generate_msg_eus(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
)

### Generating Services
_generate_srv_eus(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
)

### Generating Module File
_generate_module_eus(contrail_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(contrail_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(contrail_msgs_generate_messages contrail_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_eus _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_eus _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_eus _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_eus _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_eus _contrail_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(contrail_msgs_geneus)
add_dependencies(contrail_msgs_geneus contrail_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS contrail_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_lisp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_lisp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
)
_generate_msg_lisp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
)

### Generating Services
_generate_srv_lisp(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
)

### Generating Module File
_generate_module_lisp(contrail_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(contrail_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(contrail_msgs_generate_messages contrail_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_lisp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_lisp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_lisp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_lisp _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_lisp _contrail_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(contrail_msgs_genlisp)
add_dependencies(contrail_msgs_genlisp contrail_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS contrail_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
)
_generate_msg_nodejs(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
)
_generate_msg_nodejs(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
)
_generate_msg_nodejs(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
)

### Generating Services
_generate_srv_nodejs(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
)

### Generating Module File
_generate_module_nodejs(contrail_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(contrail_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(contrail_msgs_generate_messages contrail_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_nodejs _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_nodejs _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_nodejs _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_nodejs _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_nodejs _contrail_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(contrail_msgs_gennodejs)
add_dependencies(contrail_msgs_gennodejs contrail_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS contrail_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
)
_generate_msg_py(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
)
_generate_msg_py(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
)
_generate_msg_py(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
)

### Generating Services
_generate_srv_py(contrail_msgs
  "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
)

### Generating Module File
_generate_module_py(contrail_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(contrail_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(contrail_msgs_generate_messages contrail_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/srv/SetTracking.srv" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_py _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/CubicSpline.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_py _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_py _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/DiscreteProgress.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_py _contrail_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/griff/catkin_ws/src/contrail/contrail_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(contrail_msgs_generate_messages_py _contrail_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(contrail_msgs_genpy)
add_dependencies(contrail_msgs_genpy contrail_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS contrail_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/contrail_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(contrail_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(contrail_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/contrail_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(contrail_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(contrail_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/contrail_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(contrail_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(contrail_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/contrail_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(contrail_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(contrail_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/contrail_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(contrail_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(contrail_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
