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
function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L32"
        return (stdgo.Go.setRef(({ _r : _r } : stdgo._internal.encoding.json.Json_decoder.Decoder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_decoderdotdecoder.__type__stdgodot_internaldotencodingdotjsondotJson_decoderdotDecoder })) : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
    }
