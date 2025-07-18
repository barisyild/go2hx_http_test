package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _j = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L46"
        if (_src != null) for (__0 => _v in _src) {
            _dst[(_j : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
            _dst[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
            _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L51"
        return ((_src.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
