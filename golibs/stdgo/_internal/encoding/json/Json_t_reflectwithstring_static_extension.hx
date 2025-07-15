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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_reflectWithString_asInterface) class T_reflectWithString_static_extension {
    @:keep
    @:tdfield
    static public function _resolve( _w:stdgo.Ref<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString> = _w;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L940"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.kind() == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ks = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.string() : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L942"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L944"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textmarshalerdottextmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textmarshalerdotTextMarshaler) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
            }, _tm = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L945"
                if ((((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.isNil() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L946"
                    return (null : stdgo.Error);
                };
                var __tmp__ = _tm.marshalText(), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ks = (_buf : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L950"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L952"
        {
            final __value__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ks = stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.int_(), (10 : stdgo.GoInt))?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L955"
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ks = stdgo._internal.strconv.Strconv_formatuint.formatUint((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._k.uint(), (10 : stdgo.GoInt))?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L958"
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L960"
        throw new stdgo.AnyInterface(("unexpected map key type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
}
