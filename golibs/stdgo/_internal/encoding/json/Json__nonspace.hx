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
function _nonSpace(_b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L172"
        if (_b != null) for (__2 => _c in _b) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L173"
            if (!stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L174"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L177"
        return false;
    }
