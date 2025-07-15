package _internal.runtime.internal.atomic_;
class Int32_asInterface {
    @:keep
    public dynamic function add(_delta:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value.add(_delta);
    @:keep
    public dynamic function swap(_new_:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value.swap(_new_);
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool return @:_0 __self__.value.compareAndSwap(_old, _new_);
    @:keep
    public dynamic function store(_value:stdgo.GoInt32):Void @:_0 __self__.value.store(_value);
    @:keep
    public dynamic function load():stdgo.GoInt32 return @:_0 __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.runtime.internal.atomic_.Atomic__int32pointer.Int32Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
