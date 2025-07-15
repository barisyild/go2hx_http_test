package _internal;
@:structInit @:using(_internal.Interface4.T_x_static_extension) @:using(_internal.Interface4.T_x_static_extension) class T_x {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_x();
    }
}
function main():Void {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface4.go#L4"
        _internal.Interface4._t();
    }
function _t():stdgo.Error {
        var _j = (null : stdgo.Error);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface4.go#L8"
        return _j = stdgo.Go.asInterface((new _internal.Interface4.T_x() : _internal.Interface4.T_x), _internal.gotype.Gotype___type___internaldotinterface4dott_x.__type___internaldotInterface4dotT_x);
    }
class T_x_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface4.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface4.T_x_static_extension) @:using(_internal.Interface4.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface4.T_x>;
@:keep @:allow(_internal.Interface4.T_x_asInterface) class T_x_static_extension {
    @:keep
    @:tdfield
    static public function error( _:_internal.Interface4.T_x):stdgo.GoString {
        @:recv var _:_internal.Interface4.T_x = _?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface4.go#L14"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface4.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface4.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface4.T_xPointer>;
@:keep @:allow(_internal.Interface4.T_xPointer_asInterface) class T_xPointer_static_extension {

}
