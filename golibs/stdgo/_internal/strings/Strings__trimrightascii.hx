package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L982"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L983"
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L984"
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L988"
        return _s?.__copy__();
    }
