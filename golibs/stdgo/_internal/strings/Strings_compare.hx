package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/compare.go#L21"
        if (_a == (_b)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/compare.go#L22"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/compare.go#L24"
        if ((_a < _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/compare.go#L25"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/compare.go#L27"
        return (1 : stdgo.GoInt);
    }
