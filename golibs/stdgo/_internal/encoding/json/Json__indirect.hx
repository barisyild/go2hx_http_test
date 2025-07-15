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
function _indirect(_v:stdgo._internal.reflect.Reflect_value.Value, _decodingNull:Bool):{ var _0 : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler; var _1 : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler; var _2 : stdgo._internal.reflect.Reflect_value.Value; } {
        var _v0 = @:assignType (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _haveAddr = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L444"
        if (((_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.type().name() != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _v.canAddr() : Bool)) {
            _haveAddr = true;
            _v = _v.addr()?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L448"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L451"
            if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_v.isNil() : Bool)) {
                var _e = @:assignType (_v.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L453"
                if (((_e.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e.isNil() : Bool) && ((!_decodingNull || (_e.elem().kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) : Bool)) {
                    _haveAddr = false;
                    _v = _e?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L456"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L460"
            if (_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L461"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L464"
            if ((_decodingNull && _v.canSet() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L465"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L471"
            if (((_v.elem().kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (new stdgo.AnyInterface(_v.elem().elem(), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)) == new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue))) : Bool)) {
                _v = _v.elem()?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L473"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L475"
            if (_v.isNil()) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L476"
                _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L478"
            if (((_v.type().numMethod() > (0 : stdgo.GoInt) : Bool) && _v.canInterface() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L479"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_v.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unmarshalerdotunmarshaler.__type__stdgodot_internaldotencodingdotjsondotJson_unmarshalerdotUnmarshaler) : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : false };
                    }, _u = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L480"
                        return { _0 : _u, _1 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _2 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value) };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L482"
                if (!_decodingNull) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L483"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_v.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textunmarshalerdottextunmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textunmarshalerdotTextUnmarshaler) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _1 : false };
                        }, _u = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L484"
                            return { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : _u, _2 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value) };
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L489"
            if (_haveAddr) {
                _v = _v0?.__copy__();
                _haveAddr = false;
            } else {
                _v = _v.elem()?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L496"
        return { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _2 : _v?.__copy__() };
    }
