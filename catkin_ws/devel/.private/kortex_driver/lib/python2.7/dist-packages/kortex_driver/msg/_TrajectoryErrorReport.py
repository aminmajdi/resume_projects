# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kortex_driver/TrajectoryErrorReport.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import kortex_driver.msg

class TrajectoryErrorReport(genpy.Message):
  _md5sum = "afef645c76d140e6ce8d5d8f33e3e103"
  _type = "kortex_driver/TrajectoryErrorReport"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
TrajectoryErrorElement[] trajectory_error_elements
================================================================================
MSG: kortex_driver/TrajectoryErrorElement

uint32 error_type
uint32 error_identifier
float32 error_value
float32 min_value
float32 max_value
uint32 index
string message"""
  __slots__ = ['trajectory_error_elements']
  _slot_types = ['kortex_driver/TrajectoryErrorElement[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       trajectory_error_elements

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrajectoryErrorReport, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.trajectory_error_elements is None:
        self.trajectory_error_elements = []
    else:
      self.trajectory_error_elements = []

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
      length = len(self.trajectory_error_elements)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory_error_elements:
        _x = val1
        buff.write(_get_struct_2I3fI().pack(_x.error_type, _x.error_identifier, _x.error_value, _x.min_value, _x.max_value, _x.index))
        _x = val1.message
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.trajectory_error_elements is None:
        self.trajectory_error_elements = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory_error_elements = []
      for i in range(0, length):
        val1 = kortex_driver.msg.TrajectoryErrorElement()
        _x = val1
        start = end
        end += 24
        (_x.error_type, _x.error_identifier, _x.error_value, _x.min_value, _x.max_value, _x.index,) = _get_struct_2I3fI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.message = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.message = str[start:end]
        self.trajectory_error_elements.append(val1)
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
      length = len(self.trajectory_error_elements)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory_error_elements:
        _x = val1
        buff.write(_get_struct_2I3fI().pack(_x.error_type, _x.error_identifier, _x.error_value, _x.min_value, _x.max_value, _x.index))
        _x = val1.message
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      if self.trajectory_error_elements is None:
        self.trajectory_error_elements = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory_error_elements = []
      for i in range(0, length):
        val1 = kortex_driver.msg.TrajectoryErrorElement()
        _x = val1
        start = end
        end += 24
        (_x.error_type, _x.error_identifier, _x.error_value, _x.min_value, _x.max_value, _x.index,) = _get_struct_2I3fI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.message = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.message = str[start:end]
        self.trajectory_error_elements.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I3fI = None
def _get_struct_2I3fI():
    global _struct_2I3fI
    if _struct_2I3fI is None:
        _struct_2I3fI = struct.Struct("<2I3fI")
    return _struct_2I3fI
