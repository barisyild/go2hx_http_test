package _internal;
@:structInit @:using(_internal.Interface13.T_x_static_extension) @:using(_internal.Interface13.T_x_static_extension) class T_x {
    public var _x : stdgo._internal.reflect.Reflect_value.Value -> Void = null;
    public function new(?_x:stdgo._internal.reflect.Reflect_value.Value -> Void) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_x(_x);
    }
}
@:follow @:using(_internal.Interface13.T_y_static_extension) @:using(_internal.Interface13.T_y_static_extension) typedef T_y = stdgo._internal.reflect.Reflect_value.Value -> Void;
function main():Void {}
class T_x_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface13.T_xPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface13.T_x_static_extension) @:using(_internal.Interface13.T_xPointer_static_extension) typedef T_xPointer = stdgo.Pointer<_internal.Interface13.T_x>;
@:keep @:allow(_internal.Interface13.T_x_asInterface) class T_x_static_extension {

}
class T_y_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface13.T_yPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface13.T_y_static_extension) @:using(_internal.Interface13.T_yPointer_static_extension) typedef T_yPointer = stdgo.Pointer<_internal.Interface13.T_y>;
@:keep @:allow(_internal.Interface13.T_y_asInterface) class T_y_static_extension {

}
class T_xPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface13.T_xPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface13.T_xPointer_static_extension) typedef T_xPointerPointer = stdgo.Pointer<_internal.Interface13.T_xPointer>;
@:keep @:allow(_internal.Interface13.T_xPointer_asInterface) class T_xPointer_static_extension {

}
class T_yPointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Interface13.T_yPointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:follow @:using(_internal.Interface13.T_yPointer_static_extension) typedef T_yPointerPointer = stdgo.Pointer<_internal.Interface13.T_yPointer>;
@:keep @:allow(_internal.Interface13.T_yPointer_asInterface) class T_yPointer_static_extension {

}
