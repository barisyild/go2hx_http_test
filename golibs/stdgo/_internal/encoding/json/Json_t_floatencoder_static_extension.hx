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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_floatEncoder_asInterface) class T_floatEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _bits:stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _bits:stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder = _bits;
        var _f = @:assignType (_v.float_() : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L532"
        if ((stdgo._internal.math.Math_isinf.isInf(_f, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isnan.isNaN(_f) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L533"
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(_v?.__copy__(), stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_f, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (_bits : stdgo.GoInt))?.__copy__()) : stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unsupportedvalueerrordotunsupportedvalueerror.__type__stdgodot_internaldotencodingdotjsondotJson_unsupportedvalueerrordotUnsupportedValueError })) : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_unsupportedvalueerrordotunsupportedvalueerror.__type__stdgodot_internaldotencodingdotjsondotJson_unsupportedvalueerrordotUnsupportedValueError })));
        };
        var _b = _e.availableBuffer();
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        var _abs = @:assignType (stdgo._internal.math.Math_abs.abs(_f) : stdgo.GoFloat64);
        var _fmt = @:assignType ((102 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L546"
        if (_abs != ((0 : stdgo.GoFloat64))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L547"
            if (((_bits == ((64 : stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder)) && (((_abs < (1e-06 : stdgo.GoFloat64) : Bool) || (_abs >= (1e+21 : stdgo.GoFloat64) : Bool) : Bool)) : Bool) || (_bits == ((32 : stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder)) && ((((_abs : stdgo.GoFloat32) < (9.999999974752427e-07 : stdgo.GoFloat64) : Bool) || ((_abs : stdgo.GoFloat32) >= (1.0000000200408773e+21 : stdgo.GoFloat64) : Bool) : Bool)) : Bool) : Bool)) {
                _fmt = (101 : stdgo.GoUInt8);
            };
        };
        _b = stdgo._internal.strconv.Strconv_appendfloat.appendFloat(_b, _f, _fmt, (-1 : stdgo.GoInt), (_bits : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L552"
        if (_fmt == ((101 : stdgo.GoUInt8))) {
            var _n = @:assignType (_b.length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L555"
            if (((((_n >= (4 : stdgo.GoInt) : Bool) && _b[(_n - (4 : stdgo.GoInt) : stdgo.GoInt)] == ((101 : stdgo.GoUInt8)) : Bool) && _b[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_b[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                _b[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _b = (_b.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L561"
        _e.write(_b);
    }
}
