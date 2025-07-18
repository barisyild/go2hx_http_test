package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function uvarint(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L72"
        if (_buf != null) for (_i => _b in _buf) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L73"
            if (_i == ((10 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L76"
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L78"
            if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L79"
                if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L80"
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L82"
                return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/varint.go#L87"
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo.GoInt) };
    }
