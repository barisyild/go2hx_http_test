package stdgo._internal.sync;
class RWMutex_asInterface {
    @:keep
    public dynamic function rLocker():stdgo._internal.sync.Sync_locker.Locker return @:_0 __self__.value.rLocker();
    @:keep
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:keep
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:keep
    public dynamic function lock():Void @:_0 __self__.value.lock();
    @:keep
    public dynamic function _rUnlockSlow(_r:stdgo.GoInt32):Void @:_0 __self__.value._rUnlockSlow(_r);
    @:keep
    public dynamic function rUnlock():Void @:_0 __self__.value.rUnlock();
    @:keep
    public dynamic function tryRLock():Bool return @:_0 __self__.value.tryRLock();
    @:keep
    public dynamic function rLock():Void @:_0 __self__.value.rLock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.sync.Sync_rwmutexpointer.RWMutexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
