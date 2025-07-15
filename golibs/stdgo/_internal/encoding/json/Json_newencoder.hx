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
function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder> {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L193"
        return (stdgo.Go.setRef(({ _w : _w, _escapeHTML : true } : stdgo._internal.encoding.json.Json_encoder.Encoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_encoderdotencoder.__type__stdgodot_internaldotencodingdotjsondotJson_encoderdotEncoder })) : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
    }
