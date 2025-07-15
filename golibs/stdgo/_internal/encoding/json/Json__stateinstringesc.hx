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
function _stateInStringEsc(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L354"
        {
            final __value__ = _c;
            if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8)) || __value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((114 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L357"
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateinstringescu._stateInStringEscU;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L360"
                return (0 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L362"
        return _s._error(_c, ("in string escape code" : stdgo.GoString));
    }
