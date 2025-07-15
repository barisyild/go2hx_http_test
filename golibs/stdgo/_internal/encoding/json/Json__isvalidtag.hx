package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
function _isValidTag(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L907"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L908"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L910"
        if (_s != null) for (__2 => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L911"
            if (stdgo._internal.strings.Strings_containsrune.containsRune(("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString), _c)) {} else if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L917"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L920"
        return true;
    }
