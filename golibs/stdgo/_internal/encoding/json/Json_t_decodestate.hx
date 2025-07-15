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
@:structInit @:using(stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension) @:using(stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension) class T_decodeState {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _opcode : stdgo.GoInt = 0;
    public var _scan : stdgo._internal.encoding.json.Json_t_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_t_scanner.T_scanner);
    public var _errorContext : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>);
    public var _savedError : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_opcode:stdgo.GoInt, ?_scan:stdgo._internal.encoding.json.Json_t_scanner.T_scanner, ?_errorContext:stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) {
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_opcode != null) this._opcode = _opcode;
        if (_scan != null) this._scan = _scan;
        if (_errorContext != null) this._errorContext = _errorContext;
        if (_savedError != null) this._savedError = _savedError;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_off", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_opcode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_scan", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_scannerdott_scanner.__type__stdgodot_internaldotencodingdotjsondotJson_t_scannerdotT_scanner }, optional : false }, { name : "_errorContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_errorcontextdott_errorcontext.__type__stdgodot_internaldotencodingdotjsondotJson_t_errorcontextdotT_errorContext }) }, optional : false }, { name : "_savedError", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_useNumber", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_disallowUnknownFields", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_decodeState(_data, _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    }
}
