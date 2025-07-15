package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L934"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L935"
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L936"
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L940"
        return _s?.__copy__();
    }
