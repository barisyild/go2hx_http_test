package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L473"
        return (((_s.length) >= (_suffix.length) : Bool) && ((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString) == _suffix) : Bool);
    }
