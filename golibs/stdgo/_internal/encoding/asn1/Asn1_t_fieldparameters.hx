package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_t_fieldparameters_static_extension.T_fieldParameters_static_extension) @:using(stdgo._internal.encoding.asn1.Asn1_t_fieldparameters_static_extension.T_fieldParameters_static_extension) class T_fieldParameters {
    public var _optional : Bool = false;
    public var _explicit : Bool = false;
    public var _application : Bool = false;
    public var _private : Bool = false;
    public var _defaultValue : stdgo.Pointer<stdgo.GoInt64> = (null : stdgo.Pointer<stdgo.GoInt64>);
    public var _tag : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _stringType : stdgo.GoInt = 0;
    public var _timeType : stdgo.GoInt = 0;
    public var _set : Bool = false;
    public var _omitEmpty : Bool = false;
    public function new(?_optional:Bool, ?_explicit:Bool, ?_application:Bool, ?_private:Bool, ?_defaultValue:stdgo.Pointer<stdgo.GoInt64>, ?_tag:stdgo.Pointer<stdgo.GoInt>, ?_stringType:stdgo.GoInt, ?_timeType:stdgo.GoInt, ?_set:Bool, ?_omitEmpty:Bool) {
        if (_optional != null) this._optional = _optional;
        if (_explicit != null) this._explicit = _explicit;
        if (_application != null) this._application = _application;
        if (_private != null) this._private = _private;
        if (_defaultValue != null) this._defaultValue = _defaultValue;
        if (_tag != null) this._tag = _tag;
        if (_stringType != null) this._stringType = _stringType;
        if (_timeType != null) this._timeType = _timeType;
        if (_set != null) this._set = _set;
        if (_omitEmpty != null) this._omitEmpty = _omitEmpty;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_optional", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_explicit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_application", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_private", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_defaultValue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }) }, optional : false }, { name : "_tag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_stringType", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_timeType", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_set", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_omitEmpty", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_fieldParameters(_optional, _explicit, _application, _private, _defaultValue, _tag, _stringType, _timeType, _set, _omitEmpty);
    }
}
