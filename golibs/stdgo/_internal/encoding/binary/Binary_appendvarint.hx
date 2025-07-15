package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function appendVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _ux = @:assignType ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L94"
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L97"
        return stdgo._internal.encoding.binary.Binary_appenduvarint.appendUvarint(_buf, _ux);
    }
