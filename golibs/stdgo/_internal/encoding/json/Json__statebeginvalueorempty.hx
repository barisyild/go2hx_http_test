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
function _stateBeginValueOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L205"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L206"
            return (9 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L208"
        if (_c == ((93 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L209"
            return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L211"
        return stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue(_s, _c);
    }
