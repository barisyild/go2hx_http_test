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
function _typeByIndex(_t:stdgo._internal.reflect.Reflect_type_.Type_, _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_type_.Type_ {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L924"
        if (_index != null) for (__2 => _i in _index) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L925"
            if (_t.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _t = _t.elem();
            };
            _t = _t.field(_i).type;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L930"
        return _t;
    }
