package stdgo._internal.sync.atomic_;
class Pointer__asInterface<T_> {
    public var compareAndSwap__tp__0 : (_old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>) -> Bool;
    public var swap__tp__0 : (_new_:stdgo.Pointer<T_>) -> stdgo.Pointer<T_>;
    public var store__tp__0 : (_val:stdgo.Pointer<T_>) -> Void;
    public var load__tp__0 : () -> stdgo.Pointer<T_>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.atomic_.Atomic__pointer_pointer.Pointer_Pointer<T_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
