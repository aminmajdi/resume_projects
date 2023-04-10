# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kortex_driver/ActionType.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ActionType(genpy.Message):
  _md5sum = "e2090a0cda2c1161052081f00045b76f"
  _type = "kortex_driver/ActionType"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
uint32 UNSPECIFIED_ACTION = 0

uint32 SEND_TWIST_COMMAND = 1

uint32 SEND_WRENCH_COMMAND = 2

uint32 SEND_JOINT_SPEEDS = 4

uint32 REACH_POSE = 6

uint32 REACH_JOINT_ANGLES = 7

uint32 TOGGLE_ADMITTANCE_MODE = 13

uint32 SNAPSHOT = 14

uint32 SWITCH_CONTROL_MAPPING = 16

uint32 NAVIGATE_JOINTS = 17

uint32 NAVIGATE_MAPPINGS = 18

uint32 CHANGE_TWIST = 22

uint32 CHANGE_JOINT_SPEEDS = 23

uint32 CHANGE_WRENCH = 25

uint32 APPLY_EMERGENCY_STOP = 28

uint32 CLEAR_FAULTS = 29

uint32 TIME_DELAY = 31

uint32 EXECUTE_ACTION = 32

uint32 SEND_GRIPPER_COMMAND = 33

uint32 STOP_ACTION = 35

uint32 PLAY_PRE_COMPUTED_TRAJECTORY = 39
"""
  # Pseudo-constants
  UNSPECIFIED_ACTION = 0
  SEND_TWIST_COMMAND = 1
  SEND_WRENCH_COMMAND = 2
  SEND_JOINT_SPEEDS = 4
  REACH_POSE = 6
  REACH_JOINT_ANGLES = 7
  TOGGLE_ADMITTANCE_MODE = 13
  SNAPSHOT = 14
  SWITCH_CONTROL_MAPPING = 16
  NAVIGATE_JOINTS = 17
  NAVIGATE_MAPPINGS = 18
  CHANGE_TWIST = 22
  CHANGE_JOINT_SPEEDS = 23
  CHANGE_WRENCH = 25
  APPLY_EMERGENCY_STOP = 28
  CLEAR_FAULTS = 29
  TIME_DELAY = 31
  EXECUTE_ACTION = 32
  SEND_GRIPPER_COMMAND = 33
  STOP_ACTION = 35
  PLAY_PRE_COMPUTED_TRAJECTORY = 39

  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ActionType, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
