# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kortex_driver/ActionNotificationList.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import kortex_driver.msg

class ActionNotificationList(genpy.Message):
  _md5sum = "3f8b2186f9b7e2a63c203daafc952884"
  _type = "kortex_driver/ActionNotificationList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
ActionNotification[] notifications
================================================================================
MSG: kortex_driver/ActionNotification

uint32 action_event
ActionHandle handle
Timestamp timestamp
UserProfileHandle user_handle
uint32 abort_details
Connection connection
================================================================================
MSG: kortex_driver/ActionHandle

uint32 identifier
uint32 action_type
uint32 permission
================================================================================
MSG: kortex_driver/Timestamp

uint32 sec
uint32 usec
================================================================================
MSG: kortex_driver/UserProfileHandle

uint32 identifier
uint32 permission
================================================================================
MSG: kortex_driver/Connection

UserProfileHandle user_handle
string connection_information
uint32 connection_identifier"""
  __slots__ = ['notifications']
  _slot_types = ['kortex_driver/ActionNotification[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       notifications

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ActionNotificationList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.notifications is None:
        self.notifications = []
    else:
      self.notifications = []

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
      length = len(self.notifications)
      buff.write(_struct_I.pack(length))
      for val1 in self.notifications:
        _x = val1.action_event
        buff.write(_get_struct_I().pack(_x))
        _v1 = val1.handle
        _x = _v1
        buff.write(_get_struct_3I().pack(_x.identifier, _x.action_type, _x.permission))
        _v2 = val1.timestamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.sec, _x.usec))
        _v3 = val1.user_handle
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.identifier, _x.permission))
        _x = val1.abort_details
        buff.write(_get_struct_I().pack(_x))
        _v4 = val1.connection
        _v5 = _v4.user_handle
        _x = _v5
        buff.write(_get_struct_2I().pack(_x.identifier, _x.permission))
        _x = _v4.connection_information
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v4.connection_identifier
        buff.write(_get_struct_I().pack(_x))
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
      if self.notifications is None:
        self.notifications = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.notifications = []
      for i in range(0, length):
        val1 = kortex_driver.msg.ActionNotification()
        start = end
        end += 4
        (val1.action_event,) = _get_struct_I().unpack(str[start:end])
        _v6 = val1.handle
        _x = _v6
        start = end
        end += 12
        (_x.identifier, _x.action_type, _x.permission,) = _get_struct_3I().unpack(str[start:end])
        _v7 = val1.timestamp
        _x = _v7
        start = end
        end += 8
        (_x.sec, _x.usec,) = _get_struct_2I().unpack(str[start:end])
        _v8 = val1.user_handle
        _x = _v8
        start = end
        end += 8
        (_x.identifier, _x.permission,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (val1.abort_details,) = _get_struct_I().unpack(str[start:end])
        _v9 = val1.connection
        _v10 = _v9.user_handle
        _x = _v10
        start = end
        end += 8
        (_x.identifier, _x.permission,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v9.connection_information = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v9.connection_information = str[start:end]
        start = end
        end += 4
        (_v9.connection_identifier,) = _get_struct_I().unpack(str[start:end])
        self.notifications.append(val1)
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
      length = len(self.notifications)
      buff.write(_struct_I.pack(length))
      for val1 in self.notifications:
        _x = val1.action_event
        buff.write(_get_struct_I().pack(_x))
        _v11 = val1.handle
        _x = _v11
        buff.write(_get_struct_3I().pack(_x.identifier, _x.action_type, _x.permission))
        _v12 = val1.timestamp
        _x = _v12
        buff.write(_get_struct_2I().pack(_x.sec, _x.usec))
        _v13 = val1.user_handle
        _x = _v13
        buff.write(_get_struct_2I().pack(_x.identifier, _x.permission))
        _x = val1.abort_details
        buff.write(_get_struct_I().pack(_x))
        _v14 = val1.connection
        _v15 = _v14.user_handle
        _x = _v15
        buff.write(_get_struct_2I().pack(_x.identifier, _x.permission))
        _x = _v14.connection_information
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v14.connection_identifier
        buff.write(_get_struct_I().pack(_x))
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
      if self.notifications is None:
        self.notifications = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.notifications = []
      for i in range(0, length):
        val1 = kortex_driver.msg.ActionNotification()
        start = end
        end += 4
        (val1.action_event,) = _get_struct_I().unpack(str[start:end])
        _v16 = val1.handle
        _x = _v16
        start = end
        end += 12
        (_x.identifier, _x.action_type, _x.permission,) = _get_struct_3I().unpack(str[start:end])
        _v17 = val1.timestamp
        _x = _v17
        start = end
        end += 8
        (_x.sec, _x.usec,) = _get_struct_2I().unpack(str[start:end])
        _v18 = val1.user_handle
        _x = _v18
        start = end
        end += 8
        (_x.identifier, _x.permission,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (val1.abort_details,) = _get_struct_I().unpack(str[start:end])
        _v19 = val1.connection
        _v20 = _v19.user_handle
        _x = _v20
        start = end
        end += 8
        (_x.identifier, _x.permission,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v19.connection_information = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v19.connection_information = str[start:end]
        start = end
        end += 4
        (_v19.connection_identifier,) = _get_struct_I().unpack(str[start:end])
        self.notifications.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
