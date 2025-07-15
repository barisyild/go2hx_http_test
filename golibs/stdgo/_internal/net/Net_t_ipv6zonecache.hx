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
@:structInit @:using(stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension) @:using(stdgo._internal.net.Net_t_ipv6zonecache_static_extension.T_ipv6ZoneCache_static_extension) class T_ipv6ZoneCache {
    @:embedded
    public var rWMutex : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _lastFetched : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _toIndex : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _toName : stdgo.GoMap<stdgo.GoInt, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
    public function new(?rWMutex:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_lastFetched:stdgo._internal.time.Time_time.Time, ?_toIndex:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_toName:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) {
        if (rWMutex != null) this.rWMutex = rWMutex;
        if (_lastFetched != null) this._lastFetched = _lastFetched;
        if (_toIndex != null) this._toIndex = _toIndex;
        if (_toName != null) this._toName = _toName;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "rWMutex", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_rwmutexdotrwmutex.__type__stdgodot_internaldotsyncdotSync_rwmutexdotRWMutex }, optional : false }, { name : "_lastFetched", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_toIndex", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_toName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }])));
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.rWMutex.lock;
    public var rLock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_rLock():() -> Void return @:check32 this.rWMutex.rLock;
    public var rLocker(get, never) : () -> stdgo._internal.sync.Sync_locker.Locker;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_rLocker():() -> stdgo._internal.sync.Sync_locker.Locker return @:check32 this.rWMutex.rLocker;
    public var rUnlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_rUnlock():() -> Void return @:check32 this.rWMutex.rUnlock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.rWMutex.tryLock;
    public var tryRLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_tryRLock():() -> Bool return @:check32 this.rWMutex.tryRLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.rWMutex.unlock;
    public var _rUnlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__rUnlockSlow():stdgo.GoInt32 -> Void return @:check32 this.rWMutex._rUnlockSlow;
    public function __copy__() {
        return new T_ipv6ZoneCache(rWMutex, _lastFetched, _toIndex, _toName);
    }
}
