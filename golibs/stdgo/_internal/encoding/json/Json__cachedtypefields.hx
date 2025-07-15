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
function _cachedTypeFields(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_structfields.T_structFields {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1271"
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__fieldcache._fieldCache.load(({
                final __t__ = _t;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })), _f:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1272"
                return (stdgo.Go.typeAssert(_f, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_structfieldsdott_structfields.__type__stdgodot_internaldotencodingdotjsondotJson_t_structfieldsdotT_structFields) : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)?.__copy__();
            };
        };
        var __tmp__ = stdgo._internal.encoding.json.Json__fieldcache._fieldCache.loadOrStore(({
            final __t__ = _t;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__typefields._typeFields(_t), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_structfieldsdott_structfields.__type__stdgodot_internaldotencodingdotjsondotJson_t_structfieldsdotT_structFields), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_structfieldsdott_structfields.__type__stdgodot_internaldotencodingdotjsondotJson_t_structfieldsdotT_structFields))), _f:stdgo.AnyInterface = __tmp__._0, __2:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1275"
        return (stdgo.Go.typeAssert(_f, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_structfieldsdott_structfields.__type__stdgodot_internaldotencodingdotjsondotJson_t_structfieldsdotT_structFields) : stdgo._internal.encoding.json.Json_t_structfields.T_structFields)?.__copy__();
    }
