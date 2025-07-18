package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_bigEndian_asInterface) class T_bigEndian_static_extension {
    @:keep
    @:tdfield
    static public function goString( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L211"
        return ("binary.BigEndian" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian):stdgo.GoString {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L209"
        return ("BigEndian" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function appendUint64( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L197"
        return (_b.__append__(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint64( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(7 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(4 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(5 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(6 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(7 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint64( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(7 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L180"
        return ((((((((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function appendUint32( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L170"
        return (_b.__append__(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint32( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint32( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(3 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L158"
        return ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function appendUint16( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L150"
        return (_b.__append__(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function putUint16( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function uint16( _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _:stdgo._internal.encoding.binary.Binary_t_bigendian.T_bigEndian = _?.__copy__();
        _b[(1 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L140"
        return ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
}
