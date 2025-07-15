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
function _stateInString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L338"
        if (_c == ((34 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L340"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L342"
        if (_c == ((92 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateinstringesc._stateInStringEsc;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L344"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L346"
        if ((_c < (32 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L347"
            return _s._error(_c, ("in string literal" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L349"
        return (0 : stdgo.GoInt);
    }
