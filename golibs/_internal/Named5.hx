package _internal;
@:keep class T_i_static_extension {
    @:interfacetypeffun
    static public function _run(t:_internal.Named5.T_i):Void t._run();
}
@:interface typedef T_i = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _run():Void;
};
@:named @:using(_internal.Named5.T_x_static_extension) @:using(_internal.Named5.T_x_static_extension) typedef T_x = stdgo.GoInt;
function main():Void {
        var _y:_internal.Named5.T_x = (10 : _internal.Named5.T_x);
        var _z:stdgo.AnyInterface = new stdgo.AnyInterface(stdgo.Go.asInterface(_y, _internal.gotype.Gotype___type___internaldotnamed5dott_x.__type___internaldotNamed5dotT_x), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotnamed5dott_x.__type___internaldotNamed5dotT_x));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/named5.go#L14"
        (stdgo.Go.typeAssert(_z, _internal.gotype.Gotype___type___internaldotnamed5dott_i.__type___internaldotNamed5dotT_i) : _internal.Named5.T_i)._run();
    }
class T_x_asInterface {
    @:keep
    public dynamic function _run():Void @:_0 __self__.value._run();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Named5.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Named5.T_x_static_extension) @:using(_internal.Named5.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Named5.T_x>;
@:keep @:allow(_internal.Named5.T_x_asInterface) class T_x_static_extension {
    @:keep
    @:tdfield
    static public function _run( _:_internal.Named5.T_x):Void {
        @:recv var _:_internal.Named5.T_x = _;
    }
}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Named5.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Named5.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Named5.T_xPointer>;
@:keep @:allow(_internal.Named5.T_xPointer_asInterface) class T_xPointer_static_extension {

}
