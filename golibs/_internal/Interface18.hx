package _internal;
import stdgo._internal.reflect.Reflect;
@:keep class T__interface_0_static_extension {
    @:interfacetypeffun
    static public function is_(t:_internal.Interface18.T__interface_0, _0:stdgo.Error):Bool return t.is_(_0);
}
@:interface typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function is_(_0:stdgo.Error):Bool;
};
@:structInit @:using(_internal.Interface18.T_errorUncomparable_static_extension) @:using(_internal.Interface18.T_errorUncomparable_static_extension) class T_errorUncomparable {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_errorUncomparable();
    }
}
function main():Void {
        var _err:stdgo.AnyInterface = new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.Interface18.T_errorUncomparable() : _internal.Interface18.T_errorUncomparable), _internal.gotype.Gotype___type___internaldotinterface18dott_erroruncomparable.__type___internaldotInterface18dotT_errorUncomparable), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotinterface18dott_erroruncomparable.__type___internaldotInterface18dotT_errorUncomparable));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L7"
        stdgo.Go.println(("TESTBED:" : stdgo.GoString), (stdgo._internal.reflect.Reflect_typeof.typeOf(_err).string() : stdgo.GoString));
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_err, _internal.gotype.Gotype___type___internaldotinterface18dott__interface_0.__type___internaldotInterface18dotT__interface_0) : _internal.Interface18.T__interface_0), _1 : true };
        } catch(__exception__) {
            { _0 : (null : _internal.Interface18.T__interface_0), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L9"
        if (!_ok) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L10"
            throw new stdgo.AnyInterface(("not able to cast" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
class T_errorUncomparable_asInterface {
    @:keep
    public dynamic function is_(_target:stdgo.Error):Bool return @:_0 __self__.value.is_(_target);
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface18.T_errorUncomparablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface18.T_errorUncomparable_static_extension) @:using(_internal.Interface18.T_errorUncomparablePointer_static_extension) typedef T_errorUncomparablePointer = stdgo.Pointer<_internal.Interface18.T_errorUncomparable>;
@:keep @:allow(_internal.Interface18.T_errorUncomparable_asInterface) class T_errorUncomparable_static_extension {
    @:keep
    @:tdfield
    static public function is_( _:_internal.Interface18.T_errorUncomparable, _target:stdgo.Error):Bool {
        @:recv var _:_internal.Interface18.T_errorUncomparable = _?.__copy__();
        var _ok = @:assignType (true : Bool);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L22"
        if (false) {
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _target;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type___internaldotinterface18dott_erroruncomparable.__type___internaldotInterface18dotT_errorUncomparable) : _internal.Interface18.T_errorUncomparable), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : _internal.Interface18.T_errorUncomparable), _1 : false };
                };
                _ok = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L25"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function error( _:_internal.Interface18.T_errorUncomparable):stdgo.GoString {
        @:recv var _:_internal.Interface18.T_errorUncomparable = _?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface18.go#L17"
        return ("uncomparable error" : stdgo.GoString);
    }
}
class T_errorUncomparablePointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface18.T_errorUncomparablePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface18.T_errorUncomparablePointer_static_extension) typedef T_errorUncomparablePointerPointer = stdgo.Pointer<_internal.Interface18.T_errorUncomparablePointer>;
@:keep @:allow(_internal.Interface18.T_errorUncomparablePointer_asInterface) class T_errorUncomparablePointer_static_extension {

}
