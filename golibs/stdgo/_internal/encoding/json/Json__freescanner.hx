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
function _freeScanner(_scan:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L103"
        if ((((@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState.length) > (1024 : stdgo.GoInt) : Bool)) {
            (@:checkr _scan ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parseState = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L106"
        stdgo._internal.encoding.json.Json__scannerpool._scannerPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_scan, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner }))));
    }
