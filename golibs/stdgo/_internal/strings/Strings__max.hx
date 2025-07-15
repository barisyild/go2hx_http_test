package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L120"
        if ((_a > _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L121"
            return _a;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L123"
        return _b;
    }
