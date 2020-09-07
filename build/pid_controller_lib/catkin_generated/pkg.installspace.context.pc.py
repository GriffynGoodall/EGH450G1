# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpid_controller_lib;-lpid_controller_lib_tracking".split(';') if "-lpid_controller_lib;-lpid_controller_lib_tracking" != "" else []
PROJECT_NAME = "pid_controller_lib"
PROJECT_SPACE_DIR = "/home/griff/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
