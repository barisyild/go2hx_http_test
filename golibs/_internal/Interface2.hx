package _internal;
import stdgo._internal.reflect.Reflect;
@:keep class Value_static_extension {
    @:interfacetypeffun
    static public function set(t:_internal.Interface2.Value, _0:stdgo.GoString):stdgo.Error return t.set(_0);
    @:interfacetypeffun
    static public function string(t:_internal.Interface2.Value):stdgo.GoString return t.string();
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
@:named @:using(_internal.Interface2.T_stringValue_static_extension) @:using(_internal.Interface2.T_stringValue_static_extension) typedef T_stringValue = stdgo.GoString;
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<_internal.Interface2.T_stringValue> {
        _p.value = _val?.__copy__();
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L15"
        return new stdgo.Pointer<_internal.Interface2.T_stringValue>(() -> (_p.value : _internal.Interface2.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : _internal.Interface2.T_stringValue));
    }
function main():Void {
        var _x = @:assignType ((("hello" : stdgo.GoString) : _internal.Interface2.T_stringValue) : _internal.Interface2.T_stringValue);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _z = _x__pointer__;
        var _y = @:assignType (stdgo.Go.asInterface(_z, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface2dott_stringvalue.__type___internaldotInterface2dotT_stringValue })) : _internal.Interface2.Value);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L31"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _y;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface2dott_stringvalue.__type___internaldotInterface2dotT_stringValue })) : stdgo.Pointer<_internal.Interface2.T_stringValue>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Pointer<_internal.Interface2.T_stringValue>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _kind = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface2dott_stringvalue.__type___internaldotInterface2dotT_stringValue })))).kind() : stdgo._internal.reflect.Reflect_kind.Kind);
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L33"
                {
                    final __value__ = _kind;
                    if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else {
                        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L36"
                        throw new stdgo.AnyInterface(("not pointer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
            };
        };
    }
class T_stringValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return @:_0 __self__.get();
    @:keep
    @:pointer
    public dynamic function set(_val:stdgo.GoString):stdgo.Error return @:_0 __self__.set(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface2.T_stringValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface2.T_stringValue_static_extension) @:using(_internal.Interface2.T_stringValuePointer_static_extension) typedef T_stringValuePointer = stdgo.Pointer<_internal.Interface2.T_stringValue>;
@:keep @:allow(_internal.Interface2.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _s:stdgo.Pointer<_internal.Interface2.T_stringValue>):stdgo.GoString {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L25"
        return (_s.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _s:stdgo.Pointer<_internal.Interface2.T_stringValue>):stdgo.AnyInterface {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L23"
        return new stdgo.AnyInterface((_s.value : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _s:stdgo.Pointer<_internal.Interface2.T_stringValue>, _val:stdgo.GoString):stdgo.Error {
        _s.value = (_val : _internal.Interface2.T_stringValue);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface2.go#L20"
        return (null : stdgo.Error);
    }
}
class T_stringValuePointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface2.T_stringValuePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface2.T_stringValuePointer_static_extension) typedef T_stringValuePointerPointer = stdgo.Pointer<_internal.Interface2.T_stringValuePointer>;
@:keep @:allow(_internal.Interface2.T_stringValuePointer_asInterface) class T_stringValuePointer_static_extension {

}
