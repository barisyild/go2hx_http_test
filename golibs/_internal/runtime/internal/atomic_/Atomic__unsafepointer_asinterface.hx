package _internal.runtime.internal.atomic_;
class UnsafePointer_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    public dynamic function compareAndSwapNoWB(_old:stdgo._internal.unsafe.Unsafe.UnsafePointer, _new_:stdgo._internal.unsafe.Unsafe.UnsafePointer):Bool return @:_0 __self__.value.compareAndSwapNoWB(_old, _new_);
    @:keep
    public dynamic function store(_value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void @:_0 __self__.value.store(_value);
    @:keep
    public dynamic function storeNoWB(_value:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void @:_0 __self__.value.storeNoWB(_value);
    @:keep
    public dynamic function load():stdgo._internal.unsafe.Unsafe.UnsafePointer return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__unsafepointerpointer.UnsafePointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
