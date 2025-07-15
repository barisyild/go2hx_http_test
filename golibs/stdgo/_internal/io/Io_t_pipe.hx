package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension) @:using(stdgo._internal.io.Io_t_pipe_static_extension.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _wrCh : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
    public var _rdCh : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _rerr : stdgo._internal.io.Io_t_onceerror.T_onceError = ({} : stdgo._internal.io.Io_t_onceerror.T_onceError);
    public var _werr : stdgo._internal.io.Io_t_onceerror.T_onceError = ({} : stdgo._internal.io.Io_t_onceerror.T_onceError);
    public function new(?_wrMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_once.Once, ?_done:stdgo.Chan<{ }>, ?_rerr:stdgo._internal.io.Io_t_onceerror.T_onceError, ?_werr:stdgo._internal.io.Io_t_onceerror.T_onceError) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_wrCh != null) this._wrCh = _wrCh;
        if (_rdCh != null) this._rdCh = _rdCh;
        if (_once != null) this._once = _once;
        if (_done != null) this._done = _done;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_wrMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_wrCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false }, { name : "_rdCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_rerr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_onceerrordott_onceerror.__type__stdgodot_internaldotiodotIo_t_onceerrordotT_onceError }, optional : false }, { name : "_werr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_onceerrordott_onceerror.__type__stdgodot_internaldotiodotIo_t_onceerrordotT_onceError }, optional : false }])));
    public function __copy__() {
        return new T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    }
}
