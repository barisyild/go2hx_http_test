package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1053"
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1054"
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1056"
        return _s?.__copy__();
    }
