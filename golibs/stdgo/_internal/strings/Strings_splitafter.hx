package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L325"
        return stdgo._internal.strings.Strings__gensplit._genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), (-1 : stdgo.GoInt));
    }
