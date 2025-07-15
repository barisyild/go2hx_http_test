package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function lastIndexByte(_s:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L147"
        {
            var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L148"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L149"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L152"
        return (-1 : stdgo.GoInt);
    }
