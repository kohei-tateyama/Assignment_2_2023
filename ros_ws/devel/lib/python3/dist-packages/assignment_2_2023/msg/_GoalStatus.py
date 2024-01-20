# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from assignment_2_2023/GoalStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GoalStatus(genpy.Message):
  _md5sum = "067cd7cb55e722a1bc57106df18d22c9"
  _type = "assignment_2_2023/GoalStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 header
float64 goal_id
float64 stamp
float64 secs
float64 nsecs
float64 id
float64 status
float64 text
"""
  __slots__ = ['header','goal_id','stamp','secs','nsecs','id','status','text']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,goal_id,stamp,secs,nsecs,id,status,text

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GoalStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = 0.
      if self.goal_id is None:
        self.goal_id = 0.
      if self.stamp is None:
        self.stamp = 0.
      if self.secs is None:
        self.secs = 0.
      if self.nsecs is None:
        self.nsecs = 0.
      if self.id is None:
        self.id = 0.
      if self.status is None:
        self.status = 0.
      if self.text is None:
        self.text = 0.
    else:
      self.header = 0.
      self.goal_id = 0.
      self.stamp = 0.
      self.secs = 0.
      self.nsecs = 0.
      self.id = 0.
      self.status = 0.
      self.text = 0.

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
      _x = self
      buff.write(_get_struct_8d().pack(_x.header, _x.goal_id, _x.stamp, _x.secs, _x.nsecs, _x.id, _x.status, _x.text))
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
      _x = self
      start = end
      end += 64
      (_x.header, _x.goal_id, _x.stamp, _x.secs, _x.nsecs, _x.id, _x.status, _x.text,) = _get_struct_8d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_8d().pack(_x.header, _x.goal_id, _x.stamp, _x.secs, _x.nsecs, _x.id, _x.status, _x.text))
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
      _x = self
      start = end
      end += 64
      (_x.header, _x.goal_id, _x.stamp, _x.secs, _x.nsecs, _x.id, _x.status, _x.text,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d
