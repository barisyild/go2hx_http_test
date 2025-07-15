package _internal;
final sIGKILL : _internal.Interface12.Signal = 9i64;
var _kill : _internal.Interface12.SignalInterface = stdgo.Go.asInterface((9 : _internal.Interface12.Signal), _internal.gotype.Gotype___type___internaldotinterface12dotsignal.__type___internaldotInterface12dotSignal);
@:keep class SignalInterface_static_extension {
    @:interfacetypeffun
    static public function signal(t:_internal.Interface12.SignalInterface):Void t.signal();
    @:interfacetypeffun
    static public function string(t:_internal.Interface12.SignalInterface):stdgo.GoString return t.string();
}
@:interface typedef SignalInterface = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        
        
        * to distinguish from other Stringers
    **/
    @:interfacetypeffun
    public dynamic function signal():Void;
};
@:named @:using(_internal.Interface12.Signal_static_extension) @:using(_internal.Interface12.Signal_static_extension) typedef Signal = stdgo.GoInt;
function main():Void {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface12.go#L23"
        if ((_internal.Interface12._kill.string() : stdgo.GoString) != (("signal" : stdgo.GoString))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface12.go#L24"
            throw new stdgo.AnyInterface(("wrong value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.Interface12._kill;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Signal_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function signal():Void @:_0 __self__.value.signal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface12.SignalPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface12.Signal_static_extension) @:using(_internal.Interface12.SignalPointer_static_extension) typedef SignalPointer = stdgo.Pointer<_internal.Interface12.Signal>;
@:keep @:allow(_internal.Interface12.Signal_asInterface) class Signal_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:_internal.Interface12.Signal):stdgo.GoString {
        @:recv var _s:_internal.Interface12.Signal = _s;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface12.go#L12"
        return ("signal" : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function signal( _s:_internal.Interface12.Signal):Void {
        @:recv var _s:_internal.Interface12.Signal = _s;
    }
}
class SignalPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface12.SignalPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface12.SignalPointer_static_extension) typedef SignalPointerPointer = stdgo.Pointer<_internal.Interface12.SignalPointer>;
@:keep @:allow(_internal.Interface12.SignalPointer_asInterface) class SignalPointer_static_extension {

}
