package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension) @:using(stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension) class T_lockedSource {
    public var _lk : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _s : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
    public function new(?_lk:stdgo._internal.sync.Sync_mutex.Mutex, ?_s:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>) {
        if (_lk != null) this._lk = _lk;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_lk", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotranddotrand_t_rngsourcedott_rngsource.__type__stdgodot_internaldotmathdotranddotRand_t_rngsourcedotT_rngSource }) }, optional : false }])));
    public function __copy__() {
        return new T_lockedSource(_lk, _s);
    }
}
