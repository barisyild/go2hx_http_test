package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L230"
        {
            var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L231"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L232"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L235"
        return (-1 : stdgo.GoInt);
    }
