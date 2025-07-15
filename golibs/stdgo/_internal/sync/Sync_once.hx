package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_once_static_extension.Once_static_extension) @:using(stdgo._internal.sync.Sync_once_static_extension.Once_static_extension) class Once {
    public var _done : stdgo.GoUInt32 = 0;
    public var _m : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public function new(?_done:stdgo.GoUInt32, ?_m:stdgo._internal.sync.Sync_mutex.Mutex) {
        if (_done != null) this._done = _done;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_m", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }])));
    public function __copy__() {
        return new Once(_done, _m);
    }
}
