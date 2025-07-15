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
function _typeEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L345"
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__encodercache._encoderCache.load(({
                final __t__ = _t;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })), _fi:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L346"
                return (stdgo.Go.typeAssert(_fi, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc) : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
            };
        };
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup), _f:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L357"
        _wg.add((1 : stdgo.GoInt));
        var __tmp__ = stdgo._internal.encoding.json.Json__encodercache._encoderCache.loadOrStore(({
            final __t__ = _t;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), new stdgo.AnyInterface((function(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L359"
            _wg.wait_();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L360"
            _f(_e, _v?.__copy__(), _opts?.__copy__());
        } : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc))), _fi:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L362"
        if (_loaded) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L363"
            return (stdgo.Go.typeAssert(_fi, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc) : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
        };
        _f = stdgo._internal.encoding.json.Json__newtypeencoder._newTypeEncoder(_t, true);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L368"
        _wg.done();
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L369"
        stdgo._internal.encoding.json.Json__encodercache._encoderCache.store(({
            final __t__ = _t;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc)));
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L370"
        return _f;
    }
