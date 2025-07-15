package _internal;
@:keep class T_y_static_extension {
    @:interfacetypeffun
    static public function _test(t:_internal.Interface15.T_y):{ var _x : stdgo.GoInt; } return t._test();
}
@:interface typedef T_y = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _test():{ var _x : stdgo.GoInt; };
};
@:keep class T_z_static_extension {
    @:interfacetypeffun
    static public function _test(t:_internal.Interface15.T_z):{ var _x : stdgo.GoInt; } return t._test();
}
@:interface typedef T_z = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _test():{ var _x : stdgo.GoInt; };
};
@:follow @:using(_internal.Interface15.T_w_static_extension) @:using(_internal.Interface15.T_w_static_extension) typedef T_w = {
    var _x : stdgo.GoInt;
};
@:structInit @:using(_internal.Interface15.T_x_static_extension) @:using(_internal.Interface15.T_x_static_extension) class T_x {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_x();
    }
}
@:keep @:follow @:using(_internal.Interface15.T__struct_0_static_extension) @:using(_internal.Interface15.T__struct_0Pointer_static_extension) @:using(_internal.Interface15.T__struct_0Pointer_static_extension) typedef T__struct_0Pointer = stdgo.Pointer<_internal.Interface15.T__struct_0>;
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T__struct_0Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(_internal.Interface15.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(_internal.Interface15.T__struct_0_static_extension) @:using(_internal.Interface15.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.GoInt;
};
function main():Void {
        var _a = @:assignType (new _internal.Interface15.T_x() : _internal.Interface15.T_x);
        var _b = @:assignType (stdgo.Go.asInterface(_a, _internal.gotype.Gotype___type___internaldotinterface15dott_x.__type___internaldotInterface15dotT_x) : _internal.Interface15.T_y);
        var _c = @:assignType (_b : _internal.Interface15.T_z);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface15.go#L7"
        _c._test();
    }
class T_w_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T_wPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T_w_static_extension) @:using(_internal.Interface15.T_wPointer_static_extension) typedef T_wPointer = stdgo.Pointer<_internal.Interface15.T_w>;
@:keep @:allow(_internal.Interface15.T_w_asInterface) class T_w_static_extension {

}
class T_x_asInterface {
    @:keep
    public dynamic function _test():_internal.Interface15.T__struct_0 return @:_0 __self__.value._test();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T_x_static_extension) @:using(_internal.Interface15.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface15.T_x>;
@:keep @:allow(_internal.Interface15.T_x_asInterface) class T_x_static_extension {
    @:keep
    @:tdfield
    static public function _test( _:_internal.Interface15.T_x):_internal.Interface15.T__struct_0 {
        @:recv var _:_internal.Interface15.T_x = _?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface15.go#L17"
        return ({ _x : (0 : stdgo.GoInt) } : _internal.Interface15.T__struct_0);
    }
}
class T__struct_0Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T__struct_0PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T__struct_0Pointer_static_extension) @:using(_internal.Interface15.T__struct_0PointerPointer_static_extension) typedef T__struct_0PointerPointer = stdgo.Pointer<_internal.Interface15.T__struct_0Pointer>;
@:keep @:allow(_internal.Interface15.T__struct_0Pointer_asInterface) class T__struct_0Pointer_static_extension {

}
class T_wPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T_wPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T_wPointer_static_extension) typedef T_wPointerPointer = stdgo.Pointer<_internal.Interface15.T_wPointer>;
@:keep @:allow(_internal.Interface15.T_wPointer_asInterface) class T_wPointer_static_extension {

}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface15.T_xPointer>;
@:keep @:allow(_internal.Interface15.T_xPointer_asInterface) class T_xPointer_static_extension {

}
class T__struct_0PointerPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface15.T__struct_0PointerPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface15.T__struct_0PointerPointer_static_extension) typedef T__struct_0PointerPointerPointer = stdgo.Pointer<_internal.Interface15.T__struct_0PointerPointer>;
@:keep @:allow(_internal.Interface15.T__struct_0PointerPointer_asInterface) class T__struct_0PointerPointer_static_extension {

}
