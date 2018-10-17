#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.bytes cimport PyBytes_AsStringAndSize
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import NOTSET as __NOTSET
from thrift.py3.types cimport (
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    constant_shared_ptr,
)
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer import Protocol as __Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
import itertools
from collections import Sequence, Set, Mapping, Iterable
import warnings
import weakref as __weakref
import builtins as _builtins
cimport includes.types as _includes_types
import includes.types as _includes_types


cdef cMyStruct _MyStruct_defaults = cMyStruct()

cdef class MyStruct(thrift.py3.types.Struct):

    def __init__(
        MyStruct self, *,
        _includes_types.Included MyIncludedField=None,
        _includes_types.Included MyOtherIncludedField=None,
        MyIncludedInt=None
    ):
        if MyIncludedInt is not None:
            if not isinstance(MyIncludedInt, int):
                raise TypeError(f'MyIncludedInt is not a { int !r}.')
            MyIncludedInt = <int64_t> MyIncludedInt

        self._cpp_obj = move(MyStruct._make_instance(
          NULL,
          NULL,
          MyIncludedField,
          MyOtherIncludedField,
          MyIncludedInt,
        ))

    def __call__(
        MyStruct self,
        MyIncludedField=__NOTSET,
        MyOtherIncludedField=__NOTSET,
        MyIncludedInt=__NOTSET
    ):
        ___NOTSET = __NOTSET  # Cheaper for larger structs
        cdef bint[3] __isNOTSET  # so make_instance is typed

        changes = False
        if MyIncludedField is ___NOTSET:
            __isNOTSET[0] = True
            MyIncludedField = None
        else:
            __isNOTSET[0] = False
            changes = True

        if MyOtherIncludedField is ___NOTSET:
            __isNOTSET[1] = True
            MyOtherIncludedField = None
        else:
            __isNOTSET[1] = False
            changes = True

        if MyIncludedInt is ___NOTSET:
            __isNOTSET[2] = True
            MyIncludedInt = None
        else:
            __isNOTSET[2] = False
            changes = True


        if not changes:
            return self

        if MyIncludedField is not None:
            if not isinstance(MyIncludedField, _includes_types.Included):
                raise TypeError(f'MyIncludedField is not a { _includes_types.Included !r}.')

        if MyOtherIncludedField is not None:
            if not isinstance(MyOtherIncludedField, _includes_types.Included):
                raise TypeError(f'MyOtherIncludedField is not a { _includes_types.Included !r}.')

        if MyIncludedInt is not None:
            if not isinstance(MyIncludedInt, int):
                raise TypeError(f'MyIncludedInt is not a { int !r}.')
            MyIncludedInt = <int64_t> MyIncludedInt

        inst = <MyStruct>MyStruct.__new__(MyStruct)
        inst._cpp_obj = move(MyStruct._make_instance(
          self._cpp_obj.get(),
          __isNOTSET,
          MyIncludedField,
          MyOtherIncludedField,
          MyIncludedInt,
        ))
        return inst

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        bint* __isNOTSET,
        _includes_types.Included MyIncludedField ,
        _includes_types.Included MyOtherIncludedField ,
        object MyIncludedInt 
    ) except *:
        cdef unique_ptr[cMyStruct] c_inst
        if base_instance:
            c_inst = make_unique[cMyStruct](deref(base_instance))
        else:
            c_inst = make_unique[cMyStruct]()

        if base_instance:
            # Convert None's to default value. (or unset)
            if not __isNOTSET[0] and MyIncludedField is None:
                deref(c_inst).MyIncludedField = _MyStruct_defaults.MyIncludedField
                deref(c_inst).__isset.MyIncludedField = False
                pass

            if not __isNOTSET[1] and MyOtherIncludedField is None:
                deref(c_inst).MyOtherIncludedField = _MyStruct_defaults.MyOtherIncludedField
                deref(c_inst).__isset.MyOtherIncludedField = False
                pass

            if not __isNOTSET[2] and MyIncludedInt is None:
                deref(c_inst).MyIncludedInt = _MyStruct_defaults.MyIncludedInt
                deref(c_inst).__isset.MyIncludedInt = False
                pass

        if MyIncludedField is not None:
            deref(c_inst).MyIncludedField = deref((<_includes_types.Included?> MyIncludedField)._cpp_obj)
            deref(c_inst).__isset.MyIncludedField = True
        if MyOtherIncludedField is not None:
            deref(c_inst).MyOtherIncludedField = deref((<_includes_types.Included?> MyOtherIncludedField)._cpp_obj)
            deref(c_inst).__isset.MyOtherIncludedField = True
        if MyIncludedInt is not None:
            deref(c_inst).MyIncludedInt = MyIncludedInt
            deref(c_inst).__isset.MyIncludedInt = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        yield 'MyIncludedField', self.MyIncludedField
        yield 'MyOtherIncludedField', self.MyOtherIncludedField
        yield 'MyIncludedInt', self.MyIncludedInt

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cMyStruct] cpp_obj):
        inst = <MyStruct>MyStruct.__new__(MyStruct)
        inst._cpp_obj = move_shared(cpp_obj)
        return inst

    @property
    def MyIncludedField(self):

        if self.__field_MyIncludedField is None:
            self.__field_MyIncludedField = _includes_types.Included.create(reference_shared_ptr_MyIncludedField(self._cpp_obj, deref(self._cpp_obj).MyIncludedField))
        return self.__field_MyIncludedField

    @property
    def MyOtherIncludedField(self):

        if self.__field_MyOtherIncludedField is None:
            self.__field_MyOtherIncludedField = _includes_types.Included.create(reference_shared_ptr_MyOtherIncludedField(self._cpp_obj, deref(self._cpp_obj).MyOtherIncludedField))
        return self.__field_MyOtherIncludedField

    @property
    def MyIncludedInt(self):

        return deref(self._cpp_obj).MyIncludedInt


    def __hash__(MyStruct self):
        if not self.__hash:
            self.__hash = hash((
            self.MyIncludedField,
            self.MyOtherIncludedField,
            self.MyIncludedInt,
            ))
        return self.__hash

    def __repr__(MyStruct self):
        return f'MyStruct(MyIncludedField={repr(self.MyIncludedField)}, MyOtherIncludedField={repr(self.MyOtherIncludedField)}, MyIncludedInt={repr(self.MyIncludedInt)})'
    def __copy__(MyStruct self):
        cdef shared_ptr[cMyStruct] cpp_obj = make_shared[cMyStruct](
            deref(self._cpp_obj)
        )
        return MyStruct.create(move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, MyStruct) and
                isinstance(other, MyStruct)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cMyStruct cself = deref((<MyStruct>self)._cpp_obj)
        cdef cMyStruct cother = deref((<MyStruct>other)._cpp_obj)
        if cop == Py_EQ:
            return cself == cother
        elif cop == Py_NE:
            return not (cself == cother)
        elif cop == Py_LT:
            return cself < cother
        elif cop == Py_LE:
            return cself <= cother
        elif cop == Py_GT:
            return cself > cother
        elif cop == Py_GE:
            return cself >= cother
        else:
            return NotImplemented

    cdef __iobuf.IOBuf _serialize(MyStruct self, proto):
        cdef __iobuf.cIOBufQueue queue = __iobuf.cIOBufQueue(__iobuf.cacheChainLength())
        cdef cMyStruct* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                serializer.CompactSerialize[cMyStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                serializer.BinarySerialize[cMyStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                serializer.JSONSerialize[cMyStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                serializer.CompactJSONSerialize[cMyStruct](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        return __iobuf.from_unique_ptr(queue.move())

    cdef uint32_t _deserialize(MyStruct self, const __iobuf.cIOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cMyStruct]()
        cdef cMyStruct* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                needed = serializer.CompactDeserialize[cMyStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                needed = serializer.BinaryDeserialize[cMyStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                needed = serializer.JSONDeserialize[cMyStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                needed = serializer.CompactJSONDeserialize[cMyStruct](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        return needed

    def __reduce__(self):
        return (deserialize, (MyStruct, serialize(self)))


