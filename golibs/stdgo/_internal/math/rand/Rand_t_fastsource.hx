package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension) @:using(stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension) class T_fastSource {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex) {
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }])));
    public function __copy__() {
        return new T_fastSource(_mu);
    }
}
