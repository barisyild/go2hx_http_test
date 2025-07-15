package _internal.runtime.internal.atomic_;
class Uintptr_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_0 __self__.value.add(_delta);
    @:keep
    public dynamic function swap(_value:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_0 __self__.value.swap(_value);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUIntptr, _new_:stdgo.GoUIntptr):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    public dynamic function storeRelease(_value:stdgo.GoUIntptr):Void @:_0 __self__.value.storeRelease(_value);
    @:keep
    public dynamic function store(_value:stdgo.GoUIntptr):Void @:_0 __self__.value.store(_value);
    @:keep
    public dynamic function loadAcquire():stdgo.GoUIntptr return @:_0 __self__.value.loadAcquire();
    @:keep
    public dynamic function load():stdgo.GoUIntptr return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__uintptrpointer.UintptrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
