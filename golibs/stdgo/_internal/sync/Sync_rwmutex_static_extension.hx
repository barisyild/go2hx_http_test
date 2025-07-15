package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
    @:keep
    @:tdfield
    static public function rLocker( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):stdgo._internal.sync.Sync_locker.Locker {
        return @:privateAccess #if target.threaded {
            { lock : _rw.rmutex.acquire, unlock : _rw.rmutex.release, __underlying__ : null };
        } #else null #end;
    }
    @:keep
    @:tdfield
    static public function unlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:privateAccess #if target.threaded _rw.wmutex.release() #else null #end;
    }
    @:keep
    @:tdfield
    static public function tryLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        return @:privateAccess #if target.threaded _rw.wmutex.tryAcquire() #else false #end;
    }
    @:keep
    @:tdfield
    static public function lock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:privateAccess #if target.threaded _rw.wmutex.acquire() #else null #end;
    }
    @:keep
    @:tdfield
    static public function _rUnlockSlow( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>, _r:stdgo.GoInt32):Void throw "RWMutex:sync._rUnlockSlow is not yet implemented";
    @:keep
    @:tdfield
    static public function rUnlock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:privateAccess #if target.threaded _rw.rmutex.release() #else null #end;
    }
    @:keep
    @:tdfield
    static public function tryRLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool throw "RWMutex:sync.tryRLock is not yet implemented";
    @:keep
    @:tdfield
    static public function rLock( _rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Void {
        @:privateAccess #if target.threaded _rw.rmutex.acquire() #else null #end;
    }
}
