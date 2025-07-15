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
function _stateBeginStringOrEmpty(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L254"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L255"
            return (9 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L257"
        if (_c == ((125 : stdgo.GoUInt8))) {
            var _n = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length : stdgo.GoInt);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L260"
            return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L262"
        return stdgo._internal.encoding.json.Json__statebeginstring._stateBeginString(_s, _c);
    }
