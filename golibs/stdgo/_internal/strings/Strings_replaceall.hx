package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1105"
        return stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), _old?.__copy__(), _new_?.__copy__(), (-1 : stdgo.GoInt))?.__copy__();
    }
