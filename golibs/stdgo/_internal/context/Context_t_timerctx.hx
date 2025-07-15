package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension) @:using(stdgo._internal.context.Context_t_timerctx_static_extension.T_timerCtx_static_extension) class T_timerCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx = ({} : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _deadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?_cancelCtx:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx, ?_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_deadline:stdgo._internal.time.Time_time.Time) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_timer != null) this._timer = _timer;
        if (_deadline != null) this._deadline = _deadline;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cancelCtx", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }, optional : false }, { name : "_timer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false }, { name : "_deadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }])));
    public var done(get, never) : () -> stdgo.Chan<{ }>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<{ }> return @:check32 this._cancelCtx.done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check32 this._cancelCtx.err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check32 this._cancelCtx.value;
    public var _propagateCancel(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__propagateCancel():(stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_t_canceler.T_canceler) -> Void return @:check32 this._cancelCtx._propagateCancel;
    public function __copy__() {
        return new T_timerCtx(_cancelCtx, _timer, _deadline);
    }
}
