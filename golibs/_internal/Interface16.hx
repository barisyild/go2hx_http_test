package _internal;
@:keep class T_i_static_extension {
    @:interfacetypeffun
    static public function _foo(t:_internal.Interface16.T_i):Void t._foo();
}
@:interface typedef T_i = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _foo():Void;
};
@:structInit @:using(_internal.Interface16.T_s_static_extension) @:using(_internal.Interface16.T_s_static_extension) class T_s {
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_s(_x);
    }
}
function main():Void {
        var _x = @:assignType (new _internal.Interface16.T_s((0 : stdgo.GoInt)) : _internal.Interface16.T_s);
        var _y = @:assignType (new _internal.Interface16.T_s((1 : stdgo.GoInt)) : _internal.Interface16.T_s);
        //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface16.go#L18"
        if (({
            final __t__ = stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type___internaldotinterface16dott_s.__type___internaldotInterface16dotT_s);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo.Go.asInterface(_y, _internal.gotype.Gotype___type___internaldotinterface16dott_s.__type___internaldotInterface16dotT_s);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/Documents/GitHub/forks/go2hx/tests/unit/interface16.go#L19"
            throw new stdgo.AnyInterface(("x == y" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
class T_s_asInterface {
    @:keep
    public dynamic function _foo():Void @:_0 __self__.value._foo();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface16.T_sPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface16.T_s_static_extension) @:using(_internal.Interface16.T_sPointer_static_extension) typedef T_sPointer = stdgo.Pointer<_internal.Interface16.T_s>;
@:keep @:allow(_internal.Interface16.T_s_asInterface) class T_s_static_extension {
    @:keep
    @:tdfield
    static public function _foo( _s:_internal.Interface16.T_s):Void {
        @:recv var _s:_internal.Interface16.T_s = _s?.__copy__();
    }
}
class T_sPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface16.T_sPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface16.T_sPointer_static_extension) typedef T_sPointerPointer = stdgo.Pointer<_internal.Interface16.T_sPointer>;
@:keep @:allow(_internal.Interface16.T_sPointer_asInterface) class T_sPointer_static_extension {

}
