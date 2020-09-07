execute_process(COMMAND "/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/griff/catkin_ws/build/contrail/contrail_manager/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
