# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "uml_hri_nerve_pick_and_place: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iuml_hri_nerve_pick_and_place:/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_custom_target(_uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uml_hri_nerve_pick_and_place" "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" ""
)

get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uml_hri_nerve_pick_and_place" "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Services
_generate_srv_cpp(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Module File
_generate_module_cpp(uml_hri_nerve_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages uml_hri_nerve_pick_and_place_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_cpp _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_cpp _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uml_hri_nerve_pick_and_place_gencpp)
add_dependencies(uml_hri_nerve_pick_and_place_gencpp uml_hri_nerve_pick_and_place_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uml_hri_nerve_pick_and_place_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Services
_generate_srv_eus(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Module File
_generate_module_eus(uml_hri_nerve_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uml_hri_nerve_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages uml_hri_nerve_pick_and_place_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_eus _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_eus _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uml_hri_nerve_pick_and_place_geneus)
add_dependencies(uml_hri_nerve_pick_and_place_geneus uml_hri_nerve_pick_and_place_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uml_hri_nerve_pick_and_place_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Services
_generate_srv_lisp(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Module File
_generate_module_lisp(uml_hri_nerve_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages uml_hri_nerve_pick_and_place_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_lisp _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_lisp _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uml_hri_nerve_pick_and_place_genlisp)
add_dependencies(uml_hri_nerve_pick_and_place_genlisp uml_hri_nerve_pick_and_place_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uml_hri_nerve_pick_and_place_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Services
_generate_srv_nodejs(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Module File
_generate_module_nodejs(uml_hri_nerve_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uml_hri_nerve_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages uml_hri_nerve_pick_and_place_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_nodejs _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_nodejs _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uml_hri_nerve_pick_and_place_gennodejs)
add_dependencies(uml_hri_nerve_pick_and_place_gennodejs uml_hri_nerve_pick_and_place_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uml_hri_nerve_pick_and_place_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Services
_generate_srv_py(uml_hri_nerve_pick_and_place
  "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place
)

### Generating Module File
_generate_module_py(uml_hri_nerve_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(uml_hri_nerve_pick_and_place_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages uml_hri_nerve_pick_and_place_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/msg/Num.msg" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_py _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/csrobot/catkin_ws/src/uml_hri_nerve_pick_and_place/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_py _uml_hri_nerve_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uml_hri_nerve_pick_and_place_genpy)
add_dependencies(uml_hri_nerve_pick_and_place_genpy uml_hri_nerve_pick_and_place_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uml_hri_nerve_pick_and_place_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uml_hri_nerve_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uml_hri_nerve_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uml_hri_nerve_pick_and_place
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uml_hri_nerve_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uml_hri_nerve_pick_and_place
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uml_hri_nerve_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uml_hri_nerve_pick_and_place
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uml_hri_nerve_pick_and_place
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(uml_hri_nerve_pick_and_place_generate_messages_py std_msgs_generate_messages_py)
endif()
