package _internal;
@:keep class T_y_static_extension {
    @:interfacetypeffun
    static public function _j(t:_internal.Interface9.T_y):Void t._j();
}
@:interface typedef T_y = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _j():Void;
};
@:named @:using(_internal.Interface9.T_x_static_extension) @:using(_internal.Interface9.T_x_static_extension) typedef T_x = stdgo.GoString;
function main():Void {
        var _z = @:assignType ((("hello" : stdgo.GoString) : _internal.Interface9.T_x) : _internal.Interface9.T_x);
        var _l = @:assignType (stdgo.Go.asInterface(_z, _internal.gotype.Gotype___type___internaldotinterface9dott_x.__type___internaldotInterface9dotT_x) : _internal.Interface9.T_y);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface9.go#L16"
        _l._j();
    }
class T_x_asInterface {
    @:keep
    public dynamic function _j():Void @:_0 __self__.value._j();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface9.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface9.T_x_static_extension) @:using(_internal.Interface9.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface9.T_x>;
@:keep @:allow(_internal.Interface9.T_x_asInterface) class T_x_static_extension {
    @:keep
    @:tdfield
    static public function _j( _:_internal.Interface9.T_x):Void {
        @:recv var _:_internal.Interface9.T_x = _;
    }
}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface9.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface9.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface9.T_xPointer>;
@:keep @:allow(_internal.Interface9.T_xPointer_asInterface) class T_xPointer_static_extension {

}
