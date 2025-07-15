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
function _newEncodeState():stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L268"
        {
            var _v = @:assignType (stdgo._internal.encoding.json.Json__encodestatepool._encodeStatePool.get() : stdgo.AnyInterface);
            if (({
                final value = _v;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _e = (stdgo.Go.typeAssert(_v, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encodestatedott_encodestate.__type__stdgodot_internaldotencodingdotjsondotJson_t_encodestatedotT_encodeState })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L270"
                _e.reset();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L271"
                if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrSeen.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L272"
                    throw new stdgo.AnyInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrLevel = (0u32 : stdgo.GoUInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L275"
                return _e;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L277"
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25>();
            x.__defaultValue__ = () -> ({  } : stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25>) } : stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encodestatedott_encodestate.__type__stdgodot_internaldotencodingdotjsondotJson_t_encodestatedotT_encodeState })) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
    }
