package _internal;
@:keep class Value_static_extension {
    @:interfacetypeffun
    static public function set(t:_internal.Interface7.Value, _0:stdgo.GoString):stdgo.Error return t.set(_0);
    @:interfacetypeffun
    static public function string(t:_internal.Interface7.Value):stdgo.GoString return t.string();
}
@:interface typedef Value = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_0:stdgo.GoString):stdgo.Error;
};
@:structInit @:using(_internal.Interface7.T_b_static_extension) @:using(_internal.Interface7.T_b_static_extension) class T_b {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_b();
    }
}
@:named @:using(_internal.Interface7.T_boolValue_static_extension) @:using(_internal.Interface7.T_boolValue_static_extension) typedef T_boolValue = Bool;
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<_internal.Interface7.T_boolValue> {
        _p.value = _val;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L37"
        return new stdgo.Pointer<_internal.Interface7.T_boolValue>(() -> (_p.value : _internal.Interface7.T_boolValue), v -> (_p.value = (v : Bool) : _internal.Interface7.T_boolValue));
    }
function main():Void {
        var _p = @:assignType (true : Bool);
        var _p__pointer__ = stdgo.Go.pointer(_p);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L42"
        _internal.Interface7.var_(stdgo.Go.asInterface(_internal.Interface7._newBoolValue(true, _p__pointer__), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface7dott_boolvalue.__type___internaldotInterface7dotT_boolValue })));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L44"
        _internal.Interface7.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.Interface7.T_b() : _internal.Interface7.T_b), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface7dott_b.__type___internaldotInterface7dotT_b })) : stdgo.Ref<_internal.Interface7.T_b>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface7dott_b.__type___internaldotInterface7dotT_b })));
    }
function var_(_v:_internal.Interface7.Value):Void {}
class T_b_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.value.get();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return @:_0 __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface7.T_bPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface7.T_b_static_extension) @:using(_internal.Interface7.T_bPointer_static_extension) typedef T_bPointer = stdgo.Pointer<_internal.Interface7.T_b>;
@:keep @:allow(_internal.Interface7.T_b_asInterface) class T_b_static_extension {
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<_internal.Interface7.T_b>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.Interface7.T_b> = _b;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L20"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function get( _b:stdgo.Ref<_internal.Interface7.T_b>):stdgo.AnyInterface {
        @:recv var _b:stdgo.Ref<_internal.Interface7.T_b> = _b;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L16"
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function set( _b:stdgo.Ref<_internal.Interface7.T_b>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.Interface7.T_b> = _b;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L12"
        return (null : stdgo.Error);
    }
}
class T_boolValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.get();
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return @:_0 __self__.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface7.T_boolValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface7.T_boolValue_static_extension) @:using(_internal.Interface7.T_boolValuePointer_static_extension) typedef T_boolValuePointer = stdgo.Pointer<_internal.Interface7.T_boolValue>;
@:keep @:allow(_internal.Interface7.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _b:stdgo.Pointer<_internal.Interface7.T_boolValue>):stdgo.GoString {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L32"
        return ("str" : stdgo.GoString);
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _b:stdgo.Pointer<_internal.Interface7.T_boolValue>):stdgo.AnyInterface {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L28"
        return new stdgo.AnyInterface((_b.value : Bool), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _b:stdgo.Pointer<_internal.Interface7.T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface7.go#L24"
        return (null : stdgo.Error);
    }
}
class T_bPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface7.T_bPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface7.T_bPointer_static_extension) typedef T_bPointerPointer = stdgo.Pointer<_internal.Interface7.T_bPointer>;
@:keep @:allow(_internal.Interface7.T_bPointer_asInterface) class T_bPointer_static_extension {

}
class T_boolValuePointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface7.T_boolValuePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface7.T_boolValuePointer_static_extension) typedef T_boolValuePointerPointer = stdgo.Pointer<_internal.Interface7.T_boolValuePointer>;
@:keep @:allow(_internal.Interface7.T_boolValuePointer_asInterface) class T_boolValuePointer_static_extension {

}
