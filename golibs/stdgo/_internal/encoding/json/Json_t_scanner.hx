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
@:structInit @:using(stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension) @:using(stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension) class T_scanner {
    public var _step : (stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt = null;
    public var _endTop : Bool = false;
    public var _parseState : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _bytes : stdgo.GoInt64 = 0;
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:stdgo.Slice<stdgo.GoInt>, ?_err:stdgo.Error, ?_bytes:stdgo.GoInt64) {
        if (_step != null) this._step = _step;
        if (_endTop != null) this._endTop = _endTop;
        if (_parseState != null) this._parseState = _parseState;
        if (_err != null) this._err = _err;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_step", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner }), stdgo._internal.internal.reflect.GoType.basic(uint8_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_endTop", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_parseState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_scanner(_step, _endTop, _parseState, _err, _bytes);
    }
}
