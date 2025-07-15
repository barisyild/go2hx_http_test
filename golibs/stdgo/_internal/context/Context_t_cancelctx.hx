package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension) @:using(stdgo._internal.context.Context_t_cancelctx_static_extension.T_cancelCtx_static_extension) class T_cancelCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _done : stdgo._internal.sync.atomic_.Atomic__value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__value.Value);
    public var _children : stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, { }> = (null : stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, { }>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _cause : stdgo.Error = (null : stdgo.Error);
    public function new(?context:stdgo._internal.context.Context_context.Context, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_done:stdgo._internal.sync.atomic_.Atomic__value.Value, ?_children:stdgo.GoMap<stdgo._internal.context.Context_t_canceler.T_canceler, { }>, ?_err:stdgo.Error, ?_cause:stdgo.Error) {
        if (context != null) this.context = context;
        if (_mu != null) this._mu = _mu;
        if (_done != null) this._done = _done;
        if (_children != null) this._children = _children;
        if (_err != null) this._err = _err;
        if (_cause != null) this._cause = _cause;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "context", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__valuedotvalue.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__valuedotValue }, optional : false }, { name : "_children", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelerdott_canceler.__type__stdgodot_internaldotcontextdotContext_t_cancelerdotT_canceler }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_cause", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this.context ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline;
    public function __copy__() {
        return new T_cancelCtx(context, _mu, _done, _children, _err, _cause);
    }
}
