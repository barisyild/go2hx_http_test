package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.internal.abi.Abi.Offset_asInterface) class Offset_static_extension {
    @:keep
    @:tdfield
    static public function plusUncommon( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o._off = (_o._off + (stdgo._internal.internal.abi.Abi_uncommonsize.uncommonSize()) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L161"
        return _o?.__copy__();
    }
    @:keep
    @:tdfield
    static public function offset( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo.GoUInt64 {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L156"
        return _o.align(_o._align)._off;
    }
    @:keep
    @:tdfield
    static public function interface_( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L150"
        return _o?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((2i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L143"
        return _o?.__copy__();
    }
    @:keep
    @:tdfield
    static public function slice( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o = _o._align_(_o._sliceAlign)?.__copy__();
        _o._off = (_o._off + (((3i64 : stdgo.GoUInt64) * (_o._ptrSize : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L136"
        return _o.align(_o._sliceAlign)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function p( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L122"
        if (_o._ptrSize == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L123"
            throw new stdgo.AnyInterface(("This offset has no defined pointer size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L125"
        return _o._plus((_o._ptrSize : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function d64( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L117"
        return _o._plus((8i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function d32( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L112"
        return _o._plus((4i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function d16( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L107"
        return _o._plus((2i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function d8( _o:stdgo._internal.internal.abi.Abi_offset.Offset):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L102"
        return _o._plus((1i64 : stdgo.GoUInt64))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _plus( _o:stdgo._internal.internal.abi.Abi_offset.Offset, _x:stdgo.GoUInt64):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o = _o._align_((_x : stdgo.GoUInt8))?.__copy__();
        _o._off = (_o._off + (_x) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L97"
        return _o?.__copy__();
    }
    @:keep
    @:tdfield
    static public function align( _o:stdgo._internal.internal.abi.Abi_offset.Offset, _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L89"
        stdgo._internal.internal.abi.Abi__assertisapoweroftwo._assertIsAPowerOfTwo(_a);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L90"
        return _o._align_(_a)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _align_( _o:stdgo._internal.internal.abi.Abi_offset.Offset, _a:stdgo.GoUInt8):stdgo._internal.internal.abi.Abi_offset.Offset {
        @:recv var _o:stdgo._internal.internal.abi.Abi_offset.Offset = _o?.__copy__();
        _o._off = ((((_o._off + (_a : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (-1 ^ ((_a : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L80"
        if ((_o._align < _a : Bool)) {
            _o._align = _a;
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/compiletype.go#L83"
        return _o?.__copy__();
    }
}
