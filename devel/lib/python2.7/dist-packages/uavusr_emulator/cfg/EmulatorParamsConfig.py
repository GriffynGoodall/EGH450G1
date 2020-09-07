## *********************************************************
##
## File autogenerated for the uavusr_emulator package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [{'upper': 'AUTOPILOT', 'lower': 'autopilot', 'srcline': 124, 'name': 'Autopilot', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::AUTOPILOT', 'field': 'DEFAULT::autopilot', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [{'srcline': 10, 'description': 'Sets the armed state of the system', 'max': True, 'cconsttype': 'const bool', 'ctype': 'bool', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'system_armed', 'edit_method': '', 'default': True, 'level': 0, 'min': False, 'type': 'bool'}, {'srcline': 27, 'description': 'Autopilot custom mode', 'max': 14, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'mode', 'edit_method': "{'enum_description': 'An enum to set autopilot custom mode', 'enum': [{'srcline': 11, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'UNSET'}, {'srcline': 12, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'MANUAL'}, {'srcline': 13, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'ACRO'}, {'srcline': 14, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 3, 'ctype': 'int', 'type': 'int', 'name': 'ALTCTL'}, {'srcline': 15, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 4, 'ctype': 'int', 'type': 'int', 'name': 'POSCTL'}, {'srcline': 16, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 5, 'ctype': 'int', 'type': 'int', 'name': 'OFFBOARD'}, {'srcline': 17, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 6, 'ctype': 'int', 'type': 'int', 'name': 'STABILIZED'}, {'srcline': 18, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 7, 'ctype': 'int', 'type': 'int', 'name': 'RATTITUDE'}, {'srcline': 19, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 8, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_MISSION'}, {'srcline': 20, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 9, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_LOITER'}, {'srcline': 21, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 10, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_RTL'}, {'srcline': 22, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 11, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_LAND'}, {'srcline': 23, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 12, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_RTGS'}, {'srcline': 24, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 13, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_READY'}, {'srcline': 25, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 14, 'ctype': 'int', 'type': 'int', 'name': 'AUTO_TAKEOFF'}]}", 'default': 5, 'level': 0, 'min': 0, 'type': 'int'}, {'srcline': 28, 'description': 'Delay factor for heading reference (1.0 is no lag)', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'psi_delay', 'edit_method': '', 'default': 0.8, 'level': 0, 'min': 0.0, 'type': 'double'}], 'type': '', 'id': 1}, {'upper': 'SYSTEM', 'lower': 'system', 'srcline': 124, 'name': 'System', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT::SYSTEM', 'field': 'DEFAULT::system', 'state': True, 'parentclass': 'DEFAULT', 'groups': [], 'parameters': [{'srcline': 31, 'description': 'Mass of the platform (kg)', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'mass', 'edit_method': '', 'default': 1.4, 'level': 0, 'min': 0.001, 'type': 'double'}, {'srcline': 32, 'description': 'Available thrust for 1 motor of the platform (N)', 'max': inf, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'thrust_single', 'edit_method': '', 'default': 6.87, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 37, 'description': 'Basic motor layout of platform', 'max': 2, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'name': 'airframe', 'edit_method': "{'enum_description': 'Set the motor layout of the system', 'enum': [{'srcline': 33, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'QUADROTOR'}, {'srcline': 34, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'HEXAROTOR'}, {'srcline': 35, 'description': '', 'srcfile': '/home/griff/catkin_ws/src/uavusr_emulator/cfg/EmulatorParams.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'OCTOROTOR'}]}", 'default': 0, 'level': 0, 'min': 0, 'type': 'int'}], 'type': '', 'id': 2}], 'parameters': [], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

EmulatorParams_UNSET = 0
EmulatorParams_MANUAL = 1
EmulatorParams_ACRO = 2
EmulatorParams_ALTCTL = 3
EmulatorParams_POSCTL = 4
EmulatorParams_OFFBOARD = 5
EmulatorParams_STABILIZED = 6
EmulatorParams_RATTITUDE = 7
EmulatorParams_AUTO_MISSION = 8
EmulatorParams_AUTO_LOITER = 9
EmulatorParams_AUTO_RTL = 10
EmulatorParams_AUTO_LAND = 11
EmulatorParams_AUTO_RTGS = 12
EmulatorParams_AUTO_READY = 13
EmulatorParams_AUTO_TAKEOFF = 14
EmulatorParams_QUADROTOR = 0
EmulatorParams_HEXAROTOR = 1
EmulatorParams_OCTOROTOR = 2
