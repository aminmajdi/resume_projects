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

echo_and_run cd "/home/csrobot/catkin_ws/src/ros_kortex/kortex_examples"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/csrobot/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/csrobot/catkin_ws/install/lib/python2.7/dist-packages:/home/csrobot/catkin_ws/build/kortex_examples/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/csrobot/catkin_ws/build/kortex_examples" \
    "/usr/bin/python2" \
    "/home/csrobot/catkin_ws/src/ros_kortex/kortex_examples/setup.py" \
     \
    build --build-base "/home/csrobot/catkin_ws/build/kortex_examples" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/csrobot/catkin_ws/install" --install-scripts="/home/csrobot/catkin_ws/install/bin"
