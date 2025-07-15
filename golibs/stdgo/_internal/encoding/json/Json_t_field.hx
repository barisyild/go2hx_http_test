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
@:structInit @:using(stdgo._internal.encoding.json.Json_t_field_static_extension.T_field_static_extension) @:using(stdgo._internal.encoding.json.Json_t_field_static_extension.T_field_static_extension) class T_field {
    public var _name : stdgo.GoString = "";
    public var _nameBytes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _nameNonEsc : stdgo.GoString = "";
    public var _nameEscHTML : stdgo.GoString = "";
    public var _tag : Bool = false;
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _typ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _omitEmpty : Bool = false;
    public var _quoted : Bool = false;
    public var _encoder : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_name:stdgo.GoString, ?_nameBytes:stdgo.Slice<stdgo.GoUInt8>, ?_nameNonEsc:stdgo.GoString, ?_nameEscHTML:stdgo.GoString, ?_tag:Bool, ?_index:stdgo.Slice<stdgo.GoInt>, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_name != null) this._name = _name;
        if (_nameBytes != null) this._nameBytes = _nameBytes;
        if (_nameNonEsc != null) this._nameNonEsc = _nameNonEsc;
        if (_nameEscHTML != null) this._nameEscHTML = _nameEscHTML;
        if (_tag != null) this._tag = _tag;
        if (_index != null) this._index = _index;
        if (_typ != null) this._typ = _typ;
        if (_omitEmpty != null) this._omitEmpty = _omitEmpty;
        if (_quoted != null) this._quoted = _quoted;
        if (_encoder != null) this._encoder = _encoder;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_nameBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_nameNonEsc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_nameEscHTML", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_tag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_typ", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "_omitEmpty", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_quoted", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_encoder", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotjsondotjson_t_encoderfuncdott_encoderfunc.__type__stdgodot_internaldotencodingdotjsondotJson_t_encoderfuncdotT_encoderFunc }, optional : false }])));
    public function __copy__() {
        return new T_field(_name, _nameBytes, _nameNonEsc, _nameEscHTML, _tag, _index, _typ, _omitEmpty, _quoted, _encoder);
    }
}
