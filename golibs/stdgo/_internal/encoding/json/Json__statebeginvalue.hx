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
function _stateBeginValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L216"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L217"
            return (9 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L219"
        {
            final __value__ = _c;
            if (__value__ == ((123 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__statebeginstringorempty._stateBeginStringOrEmpty;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L222"
                return _s._pushParseState(_c, (0 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__statebeginvalueorempty._stateBeginValueOrEmpty;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L225"
                return _s._pushParseState(_c, (2 : stdgo.GoInt), (6 : stdgo.GoInt));
            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L228"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__stateneg._stateNeg;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L231"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__state0._state0;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L234"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__statet._stateT;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L237"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__statef._stateF;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L240"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__staten._stateN;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L243"
                return (1 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L245"
        if ((((49 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = stdgo._internal.encoding.json.Json__state1._state1;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L247"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L249"
        return _s._error(_c, ("looking for beginning of value" : stdgo.GoString));
    }
