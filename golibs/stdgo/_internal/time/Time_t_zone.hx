package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_t_zone_static_extension.T_zone_static_extension) @:using(stdgo._internal.time.Time_t_zone_static_extension.T_zone_static_extension) class T_zone {
    public var _name : stdgo.GoString = "";
    public var _offset : stdgo.GoInt = 0;
    public var _isDST : Bool = false;
    public function new(?_name:stdgo.GoString, ?_offset:stdgo.GoInt, ?_isDST:Bool) {
        if (_name != null) this._name = _name;
        if (_offset != null) this._offset = _offset;
        if (_isDST != null) this._isDST = _isDST;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_isDST", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_zone(_name, _offset, _isDST);
    }
}
