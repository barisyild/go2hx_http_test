package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
class T_pollDesc_asInterface {
    @:keep
    public dynamic function _pollable():Bool return @:_0 __self__.value._pollable();
    @:keep
    public dynamic function _waitCanceled(_mode:stdgo.GoInt):Void @:_0 __self__.value._waitCanceled(_mode);
    @:keep
    public dynamic function _waitWrite(_isFile:Bool):stdgo.Error return @:_0 __self__.value._waitWrite(_isFile);
    @:keep
    public dynamic function _waitRead(_isFile:Bool):stdgo.Error return @:_0 __self__.value._waitRead(_isFile);
    @:keep
    public dynamic function _wait(_mode:stdgo.GoInt, _isFile:Bool):stdgo.Error return @:_0 __self__.value._wait(_mode, _isFile);
    @:keep
    public dynamic function _prepareWrite(_isFile:Bool):stdgo.Error return @:_0 __self__.value._prepareWrite(_isFile);
    @:keep
    public dynamic function _prepareRead(_isFile:Bool):stdgo.Error return @:_0 __self__.value._prepareRead(_isFile);
    @:keep
    public dynamic function _prepare(_mode:stdgo.GoInt, _isFile:Bool):stdgo.Error return @:_0 __self__.value._prepare(_mode, _isFile);
    @:keep
    public dynamic function _evict():Void @:_0 __self__.value._evict();
    @:keep
    public dynamic function _close():Void @:_0 __self__.value._close();
    @:keep
    public dynamic function _init(_fd:stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>):stdgo.Error return @:_0 __self__.value._init(_fd);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.poll.Poll_t_polldescpointer.T_pollDescPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
