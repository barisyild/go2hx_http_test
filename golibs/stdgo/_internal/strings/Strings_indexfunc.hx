package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L831"
        return stdgo._internal.strings.Strings__indexfunc._indexFunc(_s?.__copy__(), _f, true);
    }
