package _internal;
@:keep class Y_static_extension {
    @:interfacetypeffun
    static public function m(t:_internal.Interface14.Y):Void t.m();
}
@:interface typedef Y = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function m():Void;
};
@:named @:using(_internal.Interface14.X_static_extension) @:using(_internal.Interface14.X_static_extension) typedef X = stdgo.GoInt;
function main():Void {
        var _x:stdgo.Pointer<_internal.Interface14.X> = (null : stdgo.Pointer<_internal.Interface14.X>);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface14.go#L5"
        _internal.Interface14._y(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface14dotx.__type___internaldotInterface14dotX })));
    }
function _x():stdgo.Pointer<_internal.Interface14.X> {
        var _x = (null : stdgo.Pointer<_internal.Interface14.X>);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface14.go#L17"
        return _x;
    }
function _y(_y:_internal.Interface14.Y):Void {}
class X_asInterface {
    @:keep
    public dynamic function m():Void @:_0 __self__.value.m();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface14.XPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface14.X_static_extension) @:using(_internal.Interface14.XPointer_static_extension) typedef XPointer = stdgo.Pointer<_internal.Interface14.X>;
@:keep @:allow(_internal.Interface14.X_asInterface) class X_static_extension {
    @:keep
    @:tdfield
    static public function m( _:_internal.Interface14.X):Void {
        @:recv var _:_internal.Interface14.X = _;
    }
}
class XPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface14.XPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface14.XPointer_static_extension) typedef XPointerPointer = stdgo.Pointer<_internal.Interface14.XPointer>;
@:keep @:allow(_internal.Interface14.XPointer_asInterface) class XPointer_static_extension {

}
