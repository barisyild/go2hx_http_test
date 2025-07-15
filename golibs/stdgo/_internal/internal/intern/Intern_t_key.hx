package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.internal.intern.Intern_t_key_static_extension.T_key_static_extension) @:using(stdgo._internal.internal.intern.Intern_t_key_static_extension.T_key_static_extension) class T_key {
    public var _s : stdgo.GoString = "";
    public var _cmpVal : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _isString : Bool = false;
    public function new(?_s:stdgo.GoString, ?_cmpVal:stdgo.AnyInterface, ?_isString:Bool) {
        if (_s != null) this._s = _s;
        if (_cmpVal != null) this._cmpVal = _cmpVal;
        if (_isString != null) this._isString = _isString;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cmpVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_isString", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_key(_s, _cmpVal, _isString);
    }
}
