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
var _scannerPool : stdgo._internal.sync.Sync_pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L89"
        return new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_scanner.T_scanner() : stdgo._internal.encoding.json.Json_t_scanner.T_scanner), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner })));
    } } : stdgo._internal.sync.Sync_pool.Pool);
