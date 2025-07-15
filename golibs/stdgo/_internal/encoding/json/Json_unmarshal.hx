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
function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error {
        var _d:stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState = ({} : stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState);
        var _err = @:assignType (stdgo._internal.encoding.json.Json__checkvalid._checkValid(_data, (stdgo.Go.setRef(_d._scan, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L103"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L104"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L107"
        _d._init(_data);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L108"
        return _d._unmarshal(_v);
    }
