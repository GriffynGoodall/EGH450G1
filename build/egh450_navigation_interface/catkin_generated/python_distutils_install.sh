#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/griff/catkin_ws/src/egh450_navigation_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/griff/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/griff/catkin_ws/install/lib/python2.7/dist-packages:/home/griff/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/griff/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/griff/catkin_ws/src/egh450_navigation_interface/setup.py" \
     \
    build --build-base "/home/griff/catkin_ws/build/egh450_navigation_interface" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/griff/catkin_ws/install" --install-scripts="/home/griff/catkin_ws/install/bin"
