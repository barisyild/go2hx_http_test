package stdgo._internal.testing.internal.testdeps;
@:structInit @:using(stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension) @:using(stdgo._internal.testing.internal.testdeps.Testdeps_t_testlog_static_extension.T_testLog_static_extension) class T_testLog {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _set : Bool = false;
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_set:Bool) {
        if (_mu != null) this._mu = _mu;
        if (_w != null) this._w = _w;
        if (_set != null) this._set = _set;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false }, { name : "_set", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testLog(_mu, _w, _set);
    }
}
