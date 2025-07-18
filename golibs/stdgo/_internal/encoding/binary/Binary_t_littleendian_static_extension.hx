package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_littleEndian_asInterface) class T_littleEndian_static_extension {
    @:keep
    @:tdfield
    static public function goString( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L134"
        return ("binary.LittleEndian" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L132"
        return ("LittleEndian" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function appendUint64( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L120"
        return (_b.__append__((_v : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint64( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(7 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(4 : stdgo.GoInt)] = ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(5 : stdgo.GoInt)] = ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(6 : stdgo.GoInt)] = ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(7 : stdgo.GoInt)] = ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint64( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(7 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L103"
        return ((((((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function appendUint32( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L93"
        return (_b.__append__((_v : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint32( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint32( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(3 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L81"
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function appendUint16( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L73"
        return (_b.__append__((_v : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint16( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint16( _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian = _?.__copy__();
        _b[(1 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L63"
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
}
