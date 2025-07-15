package _internal;
@:keep class T_i_static_extension {

}
@:interface typedef T_i = stdgo.StructType & {
    public dynamic function write():Void;
};
@:keep class T_i2_static_extension {
    @:interfacetypeffun
    static public function write(t:_internal.InterfaceEmbed.T_i2):Void t.write();
}
@:interface typedef T_i2 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function write():Void;
};
@:structInit @:using(_internal.InterfaceEmbed.T_s_static_extension) @:using(_internal.InterfaceEmbed.T_s_static_extension) class T_s {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_s();
    }
}
function main():Void {
        var _x:_internal.InterfaceEmbed.T_i = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.InterfaceEmbed.T_s() : _internal.InterfaceEmbed.T_s), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterfaceembeddott_s.__type___internaldotInterfaceEmbeddotT_s })) : stdgo.Ref<_internal.InterfaceEmbed.T_s>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterfaceembeddott_s.__type___internaldotInterfaceEmbeddotT_s }));
        var _y:_internal.InterfaceEmbed.T_i2 = _x;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interfaceEmbed.go#L18"
        _y.write();
    }
class T_s_asInterface {
    @:keep
    public dynamic function write():Void @:_0 __self__.value.write();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.InterfaceEmbed.T_sPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.InterfaceEmbed.T_s_static_extension) @:using(_internal.InterfaceEmbed.T_sPointer_static_extension) typedef T_sPointer = stdgo.Pointer<_internal.InterfaceEmbed.T_s>;
@:keep @:allow(_internal.InterfaceEmbed.T_s_asInterface) class T_s_static_extension {
    @:keep
    @:tdfield
    static public function write( _:stdgo.Ref<_internal.InterfaceEmbed.T_s>):Void {
        @:recv var _:stdgo.Ref<_internal.InterfaceEmbed.T_s> = _;
    }
}
class T_sPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.InterfaceEmbed.T_sPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.InterfaceEmbed.T_sPointer_static_extension) typedef T_sPointerPointer = stdgo.Pointer<_internal.InterfaceEmbed.T_sPointer>;
@:keep @:allow(_internal.InterfaceEmbed.T_sPointer_asInterface) class T_sPointer_static_extension {

}
