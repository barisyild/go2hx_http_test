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
function _dominantField(_fields:stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>):{ var _0 : stdgo._internal.encoding.json.Json_t_field.T_field; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1261"
        if (((((_fields.length) > (1 : stdgo.GoInt) : Bool) && (_fields[(0 : stdgo.GoInt)]._index.length) == ((_fields[(1 : stdgo.GoInt)]._index.length)) : Bool) && (_fields[(0 : stdgo.GoInt)]._tag == _fields[(1 : stdgo.GoInt)]._tag) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1262"
            return { _0 : (new stdgo._internal.encoding.json.Json_t_field.T_field() : stdgo._internal.encoding.json.Json_t_field.T_field), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1264"
        return { _0 : _fields[(0 : stdgo.GoInt)], _1 : true };
    }
