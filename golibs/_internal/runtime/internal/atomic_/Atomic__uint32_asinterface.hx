package _internal.runtime.internal.atomic_;
class Uint32_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoInt32):stdgo.GoUInt32 return @:_0 __self__.value.add(_delta);
    @:keep
    public dynamic function or(_value:stdgo.GoUInt32):Void @:_0 __self__.value.or(_value);
    @:keep
    public dynamic function and(_value:stdgo.GoUInt32):Void @:_0 __self__.value.and(_value);
    @:keep
    public dynamic function swap(_value:stdgo.GoUInt32):stdgo.GoUInt32 return @:_0 __self__.value.swap(_value);
    @:keep
    public dynamic function compareAndSwapRelease(_old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool return @:_0 __self__.value.compareAndSwapRelease(_old, _new_);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    public dynamic function storeRelease(_value:stdgo.GoUInt32):Void @:_0 __self__.value.storeRelease(_value);
    @:keep
    public dynamic function store(_value:stdgo.GoUInt32):Void @:_0 __self__.value.store(_value);
    @:keep
    public dynamic function loadAcquire():stdgo.GoUInt32 return @:_0 __self__.value.loadAcquire();
    @:keep
    public dynamic function load():stdgo.GoUInt32 return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__uint32pointer.Uint32Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
