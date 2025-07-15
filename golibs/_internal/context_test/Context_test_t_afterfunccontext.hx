package _internal.context_test;
@:structInit @:using(_internal.context_test.Context_test_t_afterfunccontext_static_extension.T_afterFuncContext_static_extension) @:using(_internal.context_test.Context_test_t_afterfunccontext_static_extension.T_afterFuncContext_static_extension) class T_afterFuncContext {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _afterFuncs : stdgo.GoMap<stdgo.Ref<{ }>, () -> Void> = (null : stdgo.GoMap<stdgo.Ref<{ }>, () -> Void>);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_afterFuncs:stdgo.GoMap<stdgo.Ref<{ }>, () -> Void>, ?_done:stdgo.Chan<{ }>, ?_err:stdgo.Error) {
        if (_mu != null) this._mu = _mu;
        if (_afterFuncs != null) this._afterFuncs = _afterFuncs;
        if (_done != null) this._done = _done;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_afterFuncs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_afterFuncContext(_mu, _afterFuncs, _done, _err);
    }
}
