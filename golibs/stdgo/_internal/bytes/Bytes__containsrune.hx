package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L935"
        if (_s != null) for (__0 => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L936"
            if (_c == (_r)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L937"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L940"
        return false;
    }
