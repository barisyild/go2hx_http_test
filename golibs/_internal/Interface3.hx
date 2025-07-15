package _internal;
@:structInit @:using(_internal.Interface3.S_static_extension) @:using(_internal.Interface3.S_static_extension) class S {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new S();
    }
}
function main():Void {
        var _s = (stdgo.Go.setRef((new _internal.Interface3.S() : _internal.Interface3.S), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS })) : stdgo.Ref<_internal.Interface3.S>);
        var _x = @:assignType (stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS })) : stdgo.Error);
        _x;
    }
function _y():stdgo.Error {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface3.go#L10"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.Interface3.S() : _internal.Interface3.S), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS })) : stdgo.Ref<_internal.Interface3.S>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS }));
    }
function z():stdgo.Error {
        var _i = (null : stdgo.Error);
        _i = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.Interface3.S() : _internal.Interface3.S), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS })) : stdgo.Ref<_internal.Interface3.S>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface3dots.__type___internaldotInterface3dotS }));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface3.go#L15"
        return _i;
    }
class S_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface3.SPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface3.S_static_extension) @:using(_internal.Interface3.SPointer_static_extension) typedef SPointer = stdgo.Pointer<_internal.Interface3.S>;
@:keep @:allow(_internal.Interface3.S_asInterface) class S_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo.Ref<_internal.Interface3.S>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<_internal.Interface3.S> = _s;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface3.go#L21"
        return ("hello" : stdgo.GoString);
    }
}
class SPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface3.SPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface3.SPointer_static_extension) typedef SPointerPointer = stdgo.Pointer<_internal.Interface3.SPointer>;
@:keep @:allow(_internal.Interface3.SPointer_asInterface) class SPointer_static_extension {

}
