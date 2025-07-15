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
function _newCondAddrEncoder(_canAddrEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc, _elseEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        var _enc = @:assignType ({ _canAddrEnc : _canAddrEnc, _elseEnc : _elseEnc } : stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L903"
        return _enc._encode;
    }
