# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sbg_driver: 28 messages, 0 services")

set(MSG_I_FLAGS "-Isbg_driver:/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sbg_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" "sbg_driver/SbgUtcTimeStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" "geometry_msgs/Vector3:sbg_driver/SbgMagStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" "geometry_msgs/Vector3:sbg_driver/SbgImuStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" "geometry_msgs/Vector3:sbg_driver/SbgEkfStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" "geometry_msgs/Vector3:sbg_driver/SbgImuStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" "geometry_msgs/Vector3:sbg_driver/SbgShipMotionStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" "sbg_driver/SbgGpsVelStatus:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" "sbg_driver/SbgStatusAiding:sbg_driver/SbgStatusGeneral:sbg_driver/SbgStatusCom:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" "geometry_msgs/Vector3:sbg_driver/SbgGpsPosStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" "geometry_msgs/Vector3:sbg_driver/SbgEkfStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:sbg_driver/SbgEkfStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" "sbg_driver/SbgAirDataStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" ""
)

get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_custom_target(_sbg_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sbg_driver" "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)
_generate_msg_cpp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(sbg_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sbg_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sbg_driver_generate_messages sbg_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_cpp _sbg_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbg_driver_gencpp)
add_dependencies(sbg_driver_gencpp sbg_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbg_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)
_generate_msg_eus(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(sbg_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sbg_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sbg_driver_generate_messages sbg_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_eus _sbg_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbg_driver_geneus)
add_dependencies(sbg_driver_geneus sbg_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbg_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)
_generate_msg_lisp(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(sbg_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sbg_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sbg_driver_generate_messages sbg_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_lisp _sbg_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbg_driver_genlisp)
add_dependencies(sbg_driver_genlisp sbg_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbg_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)
_generate_msg_nodejs(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sbg_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sbg_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sbg_driver_generate_messages sbg_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_nodejs _sbg_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbg_driver_gennodejs)
add_dependencies(sbg_driver_gennodejs sbg_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbg_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg"
  "${MSG_I_FLAGS}"
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)
_generate_msg_py(sbg_driver
  "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
)

### Generating Services

### Generating Module File
_generate_module_py(sbg_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sbg_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sbg_driver_generate_messages sbg_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTime.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMag.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfEuler.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsHdt.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuShort.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotion.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgShipMotionStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgOdoVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVel.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagCalib.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPos.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfNav.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusCom.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgImuStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsRaw.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgUtcTimeStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusGeneral.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfQuat.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEkfStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgMagStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgEvent.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgStatusAiding.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirData.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsVelStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgGpsPosStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cambernard/workspaceUlysse/src/sbg_ros_driver/msg/SbgAirDataStatus.msg" NAME_WE)
add_dependencies(sbg_driver_generate_messages_py _sbg_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sbg_driver_genpy)
add_dependencies(sbg_driver_genpy sbg_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sbg_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sbg_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sbg_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sbg_driver_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sbg_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sbg_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sbg_driver_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sbg_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sbg_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sbg_driver_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sbg_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sbg_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sbg_driver_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sbg_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sbg_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sbg_driver_generate_messages_py geometry_msgs_generate_messages_py)
endif()
