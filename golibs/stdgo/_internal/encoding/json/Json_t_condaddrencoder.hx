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
@:structInit @:using(stdgo._internal.encoding.json.Json_t_condaddrencoder_static_extension.T_condAddrEncoder_static_extension) @:using(stdgo._internal.encoding.json.Json_t_condaddrencoder_static_extension.T_condAddrEncoder_static_extension) class T_condAddrEncoder {
    public var _canAddrEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public var _elseEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_canAddrEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc, ?_elseEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_canAddrEnc != null) this._canAddrEnc = _canAddrEnc;
        if (_elseEnc != null) this._elseEnc = _elseEnc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_canAddrEnc", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc }, optional : false }, { name : "_elseEnc", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc }, optional : false }])));
    public function __copy__() {
        return new T_condAddrEncoder(_canAddrEnc, _elseEnc);
    }
}
