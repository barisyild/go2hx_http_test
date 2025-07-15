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
function _newSliceEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L828"
        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            var _p = @:assignType (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t.elem()) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L830"
            if ((!_p.implements_(stdgo._internal.encoding.json.Json__marshalertype._marshalerType) && !_p.implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L831"
                return stdgo._internal.encoding.json.Json__encodebyteslice._encodeByteSlice;
            };
        };
        var _enc = @:assignType (new stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder(stdgo._internal.encoding.json.Json__newarrayencoder._newArrayEncoder(_t)) : stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L835"
        return _enc._encode;
    }
