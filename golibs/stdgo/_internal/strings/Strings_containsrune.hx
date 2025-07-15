package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function containsRune(_s:stdgo.GoString, _r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L71"
        return (stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
