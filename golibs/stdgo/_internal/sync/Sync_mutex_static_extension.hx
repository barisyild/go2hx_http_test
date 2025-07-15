package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Mutex_asInterface) class Mutex_static_extension {
    @:keep
    @:tdfield
    static public function _unlockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, _new_:stdgo.GoInt32):Void throw "Mutex:sync._unlockSlow is not yet implemented";
    @:keep
    @:tdfield
    static public function unlock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:privateAccess #if target.threaded _m.mutex.release() #else null #end;
    }
    @:keep
    @:tdfield
    static public function _lockSlow( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void throw "Mutex:sync._lockSlow is not yet implemented";
    @:keep
    @:tdfield
    static public function tryLock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Bool {
        return @:privateAccess #if target.threaded _m.mutex.tryAcquire() #else false #end;
    }
    @:keep
    @:tdfield
    static public function lock( _m:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>):Void {
        @:privateAccess #if target.threaded _m.mutex.acquire() #else null #end;
    }
}
