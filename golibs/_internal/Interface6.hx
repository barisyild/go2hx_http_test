package _internal;
@:keep class Inter_static_extension {
    @:interfacetypeffun
    static public function test(t:_internal.Interface6.Inter):Void t.test();
}
@:interface typedef Inter = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function test():Void;
};
@:named @:using(_internal.Interface6.Named_static_extension) @:using(_internal.Interface6.Named_static_extension) typedef Named = Bool;
function main():Void {
        var _y:_internal.Interface6.Named = false, _y__pointer__ = stdgo.Go.pointer(_y);
        var _x = _y__pointer__;
        var _z = @:assignType (stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface6dotnamed.__type___internaldotInterface6dotNamed })) : _internal.Interface6.Inter);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface6.go#L17"
        if (_z == null) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface6.go#L18"
            throw new stdgo.AnyInterface(("wrong value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
class Named_asInterface {
    @:keep
    @:pointer
    public dynamic function test():Void @:_0 __self__.test();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface6.NamedPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface6.Named_static_extension) @:using(_internal.Interface6.NamedPointer_static_extension) typedef NamedPointer = stdgo.Pointer<_internal.Interface6.Named>;
@:keep @:allow(_internal.Interface6.Named_asInterface) class Named_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function test( _x:stdgo.Pointer<_internal.Interface6.Named>):Void {
        _x.value = true;
    }
}
class NamedPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface6.NamedPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface6.NamedPointer_static_extension) typedef NamedPointerPointer = stdgo.Pointer<_internal.Interface6.NamedPointer>;
@:keep @:allow(_internal.Interface6.NamedPointer_asInterface) class NamedPointer_static_extension {

}
