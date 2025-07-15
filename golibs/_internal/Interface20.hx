package _internal;
var _count : stdgo.GoInt = (0 : stdgo.GoInt);
@:keep class I_static_extension {
    @:interfacetypeffun
    static public function func(t:_internal.Interface20.I):Void t.func();
}
@:interface typedef I = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function func():Void;
};
@:structInit @:using(_internal.Interface20.S_static_extension) @:using(_internal.Interface20.S_static_extension) class S {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new S();
    }
}
function main():Void {
        var _s = @:assignType (new _internal.Interface20.S() : _internal.Interface20.S);
        var _a = @:assignType (new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type___internaldotinterface20dots.__type___internaldotInterface20dotS), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotinterface20dots.__type___internaldotInterface20dotS)) : stdgo.AnyInterface);
        var _i = @:assignType (stdgo.Go.typeAssert(_a, _internal.gotype.Gotype___type___internaldotinterface20doti.__type___internaldotInterface20dotI) : _internal.Interface20.I);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface20.go#L7"
        _i.func();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface20.go#L8"
        if (_internal.Interface20._count != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface20.go#L9"
            throw new stdgo.AnyInterface(("issue" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.Interface20._count;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class S_asInterface {
    @:keep
    public dynamic function func():Void @:_0 __self__.value.func();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface20.SPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface20.S_static_extension) @:using(_internal.Interface20.SPointer_static_extension) typedef SPointer = stdgo.Pointer<_internal.Interface20.S>;
@:keep @:allow(_internal.Interface20.S_asInterface) class S_static_extension {
    @:keep
    @:tdfield
    static public function func( _:_internal.Interface20.S):Void {
        @:recv var _:_internal.Interface20.S = _?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface20.go#L22"
        _internal.Interface20._count++;
    }
}
class SPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface20.SPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface20.SPointer_static_extension) typedef SPointerPointer = stdgo.Pointer<_internal.Interface20.SPointer>;
@:keep @:allow(_internal.Interface20.SPointer_asInterface) class SPointer_static_extension {

}
