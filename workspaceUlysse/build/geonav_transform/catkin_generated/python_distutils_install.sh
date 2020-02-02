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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/cambernard/workspaceUlysse/src/geonav_transform"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/cambernard/workspaceUlysse/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/cambernard/workspaceUlysse/install/lib/python2.7/dist-packages:/home/cambernard/workspaceUlysse/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/cambernard/workspaceUlysse/build" \
    "/usr/bin/python2" \
    "/home/cambernard/workspaceUlysse/src/geonav_transform/setup.py" \
    build --build-base "/home/cambernard/workspaceUlysse/build/geonav_transform" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/cambernard/workspaceUlysse/install" --install-scripts="/home/cambernard/workspaceUlysse/install/bin"
