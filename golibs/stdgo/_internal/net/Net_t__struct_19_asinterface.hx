package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
class T__struct_19_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _unlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function _lockSlow():Void @:_0 __self__.value._lockSlow();
    @:embedded
    @:localembedfields
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:localembedfields
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:localembedfields
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t__struct_19pointer.T__struct_19Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
