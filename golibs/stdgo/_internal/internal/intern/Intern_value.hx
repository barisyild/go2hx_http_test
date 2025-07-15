package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.internal.intern.Intern_value_static_extension.Value_static_extension) @:using(stdgo._internal.internal.intern.Intern_value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __0 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _cmpVal : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _resurrected : Bool = false;
    public function new(?__0:stdgo.GoArray<() -> Void>, ?_cmpVal:stdgo.AnyInterface, ?_resurrected:Bool) {
        if (__0 != null) this.__0 = __0;
        if (_cmpVal != null) this._cmpVal = _cmpVal;
        if (_resurrected != null) this._resurrected = _resurrected;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, 0) }, optional : false }, { name : "_cmpVal", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_resurrected", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Value(__0, _cmpVal, _resurrected);
    }
}
