package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev = @:assignType (32 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L787"
        return stdgo._internal.strings.Strings_map_.map_(function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L789"
            if (stdgo._internal.strings.Strings__isseparator._isSeparator(_prev)) {
                _prev = _r;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L791"
                return stdgo._internal.unicode.Unicode_totitle.toTitle(_r);
            };
            _prev = _r;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L794"
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
