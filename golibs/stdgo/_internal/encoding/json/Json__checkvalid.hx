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
function _checkValid(_data:stdgo.Slice<stdgo.GoUInt8>, _scan:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L32"
        _scan._reset();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L33"
        if (_data != null) for (__2 => _c in _data) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L34"
            (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L35"
            if ((@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_scan, _c) == ((11 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L36"
                return (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L39"
        if (_scan._eof() == ((11 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L40"
            return (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L42"
        return (null : stdgo.Error);
    }
