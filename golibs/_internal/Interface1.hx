package _internal;
import stdgo._internal.reflect.Reflect;
@:keep class Value_static_extension {
    @:interfacetypeffun
    static public function set(t:_internal.Interface1.Value, _0:stdgo.GoString):stdgo.GoString return t.set(_0);
    @:interfacetypeffun
    static public function string(t:_internal.Interface1.Value):stdgo.GoString return t.string();
}
@:interface typedef Value = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function set(_0:stdgo.GoString):stdgo.GoString;
};
@:named @:using(_internal.Interface1.Data_static_extension) @:using(_internal.Interface1.Data_static_extension) typedef Data = stdgo.GoString;
function main():Void {
        var _d:_internal.Interface1.Data = (stdgo.Go.str() : _internal.Interface1.Data), _d__pointer__ = stdgo.Go.pointer(_d);
        var _g = _d__pointer__;
        var _x:_internal.Interface1.Value = stdgo.Go.asInterface(_g, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotinterface1dotdata.__type___internaldotInterface1dotData }));
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L25"
        if (_x.set(("hello world" : stdgo.GoString)) != ((_x.string() : stdgo.GoString))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L26"
            throw new stdgo.AnyInterface(("not matching" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _j:stdgo.AnyInterface = ({
            final __t__ = _x;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        });
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L29"
        {
            final __type__ = _j;
            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type___internaldotinterface1dotvalue.__type___internaldotInterface1dotValue)) {} else {
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L32"
                stdgo.Go.println((stdgo._internal.reflect.Reflect_typeof.typeOf(_j).string() : stdgo.GoString));
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L33"
                throw new stdgo.AnyInterface(("wrong type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L35"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type___internaldotinterface1dotvalue.__type___internaldotInterface1dotValue)) {} else {
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L38"
                stdgo.Go.println((stdgo._internal.reflect.Reflect_typeof.typeOf(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })).string() : stdgo.GoString));
                //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L39"
                throw new stdgo.AnyInterface(("wrong type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
class Data_asInterface {
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.GoString return @:_0 __self__.set(_s);
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return @:_0 __self__.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface1.DataPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface1.Data_static_extension) @:using(_internal.Interface1.DataPointer_static_extension) typedef DataPointer = stdgo.Pointer<_internal.Interface1.Data>;
@:keep @:allow(_internal.Interface1.Data_asInterface) class Data_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function set( _d:stdgo.Pointer<_internal.Interface1.Data>, _s:stdgo.GoString):stdgo.GoString {
        _d.value = (_s : _internal.Interface1.Data);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L18"
        return (_d.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function string( _d:stdgo.Pointer<_internal.Interface1.Data>):stdgo.GoString {
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface1.go#L13"
        return (_d.value : stdgo.GoString)?.__copy__();
    }
}
class DataPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface1.DataPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface1.DataPointer_static_extension) typedef DataPointerPointer = stdgo.Pointer<_internal.Interface1.DataPointer>;
@:keep @:allow(_internal.Interface1.DataPointer_asInterface) class DataPointer_static_extension {

}
