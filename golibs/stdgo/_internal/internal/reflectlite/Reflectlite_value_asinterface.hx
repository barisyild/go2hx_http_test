package stdgo._internal.internal.reflectlite;
class Value_asInterface {
    @:keep
    public dynamic function type():stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return @:_0 __self__.value.type();
    @:keep
    public dynamic function set(_x:stdgo._internal.internal.reflectlite.Reflectlite_value.Value):Void @:_0 __self__.value.set(_x);
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    public dynamic function kind():stdgo._internal.internal.abi.Abi_kind.Kind return @:_0 __self__.value.kind();
    @:keep
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    @:keep
    public dynamic function isNil():Bool return @:_0 __self__.value.isNil();
    @:keep
    public dynamic function elem():stdgo._internal.internal.reflectlite.Reflectlite_value.Value return @:_0 __self__.value.elem();
    @:keep
    public dynamic function canSet():Bool return @:_0 __self__.value.canSet();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.reflectlite.Reflectlite_valuepointer.ValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
