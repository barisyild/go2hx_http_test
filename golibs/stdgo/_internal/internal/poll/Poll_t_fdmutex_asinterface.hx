package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
class T_fdMutex_asInterface {
    @:keep
    public dynamic function _rwunlock(_read:Bool):Bool return @:_0 __self__.value._rwunlock(_read);
    @:keep
    public dynamic function _rwlock(_read:Bool):Bool return @:_0 __self__.value._rwlock(_read);
    @:keep
    public dynamic function _decref():Bool return @:_0 __self__.value._decref();
    @:keep
    public dynamic function _increfAndClose():Bool return @:_0 __self__.value._increfAndClose();
    @:keep
    public dynamic function _incref():Bool return @:_0 __self__.value._incref();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.poll.Poll_t_fdmutexpointer.T_fdMutexPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
