package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _appendUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        var _a = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_x : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L201"
        return (_b.__append__(...((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
