# ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['egh450_navigation_interface'],
    package_dir={'': 'src'},
    requires=['std_msgs', 'geometry_msgs', 'contrail_msgs', 'contrail', 'rospy']
)

setup(**setup_args)
