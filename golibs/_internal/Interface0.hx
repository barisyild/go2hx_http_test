package _internal;
import stdgo._internal.reflect.Reflect;
@:keep class T__interface_0_static_extension {
    @:interfacetypeffun
    static public function _s(t:_internal.Interface0.T__interface_0):{ var _x : stdgo.GoString; var _y : stdgo.AnyInterface; } return t._s();
}
@:interface typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _s():{ var _x : stdgo.GoString; var _y : stdgo.AnyInterface; };
};
@:keep class T__interface_1_static_extension {
    @:interfacetypeffun
    static public function _j(t:_internal.Interface0.T__interface_1):stdgo.GoString return t._j();
}
@:interface typedef T__interface_1 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _j():stdgo.GoString;
};
@:keep @:follow @:using(_internal.Interface0.T__struct_0_static_extension) @:using(_internal.Interface0.T__struct_0Pointer_static_extension) @:using(_internal.Interface0.T__struct_0Pointer_static_extension) typedef T__struct_0Pointer = stdgo.Pointer<_internal.Interface0.T__struct_0>;
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T__struct_0Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(_internal.Interface0.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(_internal.Interface0.T__struct_0_static_extension) @:using(_internal.Interface0.T__struct_0_static_extension) @:using(_internal.Interface0.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.GoString;
    public var _y : _internal.Interface0.T__interface_1;
};
@:follow @:using(_internal.Interface0.T_x_static_extension) @:using(_internal.Interface0.T_x_static_extension) typedef T_x = () -> _internal.Interface0.T__interface_0;
@:named @:using(_internal.Interface0.T_t_static_extension) @:using(_internal.Interface0.T_t_static_extension) typedef T_t = stdgo.GoInt;
@:keep class T_main___localname___y_410_static_extension {
    @:interfacetypeffun
    static public function _s(t:_internal.Interface0.T_main___localname___y_410):_internal.Interface0.T__struct_0 return t._s();
    @:interfacetypeffun
    static public function s(t:_internal.Interface0.T_main___localname___y_410):_internal.Interface0.T__struct_0 return t.s();
}
@:interface typedef T_main___localname___y_410 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function s():_internal.Interface0.T__struct_0;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _s():_internal.Interface0.T__struct_0;
};
function main():Void {
        {};
        var _d:_internal.Interface0.T_t = (10 : _internal.Interface0.T_t);
        var _yy:_internal.Interface0.T_main___localname___y_410 = stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type___internaldotinterface0dott_t.__type___internaldotInterface0dotT_t);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L49"
        if (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type___internaldotinterface0dott_t.__type___internaldotInterface0dotT_t), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotinterface0dott_t.__type___internaldotInterface0dotT_t))).numMethod() != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L50"
            throw new stdgo.AnyInterface(("wrong number of methods" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L52"
        if (stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = _yy;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).numMethod() != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L53"
            throw new stdgo.AnyInterface(("wrong number of methods" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
class T__struct_0Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T__struct_0PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T__struct_0Pointer_static_extension) @:using(_internal.Interface0.T__struct_0PointerPointer_static_extension) typedef T__struct_0PointerPointer = stdgo.Pointer<_internal.Interface0.T__struct_0Pointer>;
@:keep @:allow(_internal.Interface0.T__struct_0Pointer_asInterface) class T__struct_0Pointer_static_extension {

}
class T_x_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T_x_static_extension) @:using(_internal.Interface0.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface0.T_x>;
@:keep @:allow(_internal.Interface0.T_x_asInterface) class T_x_static_extension {

}
class T_t_asInterface {
    @:keep
    public dynamic function _s():_internal.Interface0.T__struct_0 return @:_0 __self__.value._s();
    @:keep
    public dynamic function s():_internal.Interface0.T__struct_0 return @:_0 __self__.value.s();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T_tPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T_t_static_extension) @:using(_internal.Interface0.T_tPointer_static_extension) typedef T_tPointer = stdgo.Pointer<_internal.Interface0.T_t>;
@:keep @:allow(_internal.Interface0.T_t_asInterface) class T_t_static_extension {
    @:keep
    @:tdfield
    static public function _s( _:_internal.Interface0.T_t):_internal.Interface0.T__struct_0 {
        @:recv var _:_internal.Interface0.T_t = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L30"
        return ({ _x : ("" : stdgo.GoString), _y : (null : _internal.Interface0.T__interface_1) } : _internal.Interface0.T__struct_0);
    }
    @:keep
    @:tdfield
    static public function s( _:_internal.Interface0.T_t):_internal.Interface0.T__struct_0 {
        @:recv var _:_internal.Interface0.T_t = _;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface0.go#L20"
        return ({ _x : ("" : stdgo.GoString), _y : (null : _internal.Interface0.T__interface_1) } : _internal.Interface0.T__struct_0);
    }
}
class T__struct_0PointerPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T__struct_0PointerPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T__struct_0PointerPointer_static_extension) typedef T__struct_0PointerPointerPointer = stdgo.Pointer<_internal.Interface0.T__struct_0PointerPointer>;
@:keep @:allow(_internal.Interface0.T__struct_0PointerPointer_asInterface) class T__struct_0PointerPointer_static_extension {

}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface0.T_xPointer>;
@:keep @:allow(_internal.Interface0.T_xPointer_asInterface) class T_xPointer_static_extension {

}
class T_tPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface0.T_tPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface0.T_tPointer_static_extension) typedef T_tPointerPointer = stdgo.Pointer<_internal.Interface0.T_tPointer>;
@:keep @:allow(_internal.Interface0.T_tPointer_asInterface) class T_tPointer_static_extension {

}
