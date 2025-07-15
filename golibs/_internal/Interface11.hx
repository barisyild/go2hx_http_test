package _internal;
@:keep class Y_static_extension {
    @:interfacetypeffun
    static public function _test(t:_internal.Interface11.Y):Void t._test();
}
@:interface typedef Y = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _test():Void;
};
@:named @:using(_internal.Interface11.X_static_extension) @:using(_internal.Interface11.X_static_extension) typedef X = stdgo.GoInt;
function main():Void {
        var _x:_internal.Interface11.X = ((0 : stdgo.GoInt) : _internal.Interface11.X);
        _x;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface11.go#L6"
        _internal.Interface11._transfer(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type___internaldotinterface11dotx.__type___internaldotInterface11dotX));
    }
function _transfer(_0:_internal.Interface11.Y):Void {}
class X_asInterface {
    @:keep
    public dynamic function _test():Void @:_0 __self__.value._test();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface11.XPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface11.X_static_extension) @:using(_internal.Interface11.XPointer_static_extension) typedef XPointer = stdgo.Pointer<_internal.Interface11.X>;
@:keep @:allow(_internal.Interface11.X_asInterface) class X_static_extension {
    @:keep
    @:tdfield
    static public function _test( _:_internal.Interface11.X):Void {
        @:recv var _:_internal.Interface11.X = _;
    }
}
class XPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface11.XPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface11.XPointer_static_extension) typedef XPointerPointer = stdgo.Pointer<_internal.Interface11.XPointer>;
@:keep @:allow(_internal.Interface11.XPointer_asInterface) class XPointer_static_extension {

}
