package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function putUvarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt64):stdgo.GoInt {
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L53"
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _buf[(_i : stdgo.GoInt)] = ((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L56"
            _i++;
        };
        _buf[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L59"
        return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
