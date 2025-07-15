package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension) @:using(stdgo._internal.context.Context_t_afterfuncctx_static_extension.T_afterFuncCtx_static_extension) class T_afterFuncCtx {
    @:embedded
    public var _cancelCtx : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx = ({} : stdgo._internal.context.Context_t_cancelctx.T_cancelCtx);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _f : () -> Void = null;
    public function new(?_cancelCtx:stdgo._internal.context.Context_t_cancelctx.T_cancelCtx, ?_once:stdgo._internal.sync.Sync_once.Once, ?_f:() -> Void) {
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_once != null) this._once = _once;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cancelCtx", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx }, optional : false }, { name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this._cancelCtx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline;
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
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this._cancelCtx.string;
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
        return new T_afterFuncCtx(_cancelCtx, _once, _f);
    }
}
