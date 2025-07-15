package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_t_dedup_static_extension.T_dedup_static_extension) @:using(stdgo._internal.internal.bisect.Bisect_t_dedup_static_extension.T_dedup_static_extension) class T_dedup {
    public var _recent : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>(128, 128, ...[for (i in 0 ... (128 > 128 ? 128 : 128 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt64>(4, 4).__setNumber64__()]);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoUInt64, Bool> = (null : stdgo.GoMap<stdgo.GoUInt64, Bool>);
    public function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>) {
        if (_recent != null) this._recent = _recent;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_recent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, 4) }, 128) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_dedup(_recent, _mu, _m);
    }
}
