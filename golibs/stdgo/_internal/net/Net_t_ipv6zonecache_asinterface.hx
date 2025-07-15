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
class T_ipv6ZoneCache_asInterface {
    @:keep
    public dynamic function _index(_name:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value._index(_name);
    @:keep
    public dynamic function _name(_index:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._name(_index);
    @:keep
    public dynamic function _update(_ift:stdgo.Slice<stdgo._internal.net.Net_interface.Interface>, _force:Bool):Bool return @:_0 __self__.value._update(_ift, _force);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rUnlockSlow(_0:stdgo.GoInt32):Void @:_0 __self__.value._rUnlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unlock():Void @:_0 __self__.value.unlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryRLock():Bool return @:_0 __self__.value.tryRLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function tryLock():Bool return @:_0 __self__.value.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rUnlock():Void @:_0 __self__.value.rUnlock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rLocker():stdgo._internal.sync.Sync_locker.Locker return @:_0 __self__.value.rLocker();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function rLock():Void @:_0 __self__.value.rLock();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lock():Void @:_0 __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_ipv6zonecachepointer.T_ipv6ZoneCachePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
