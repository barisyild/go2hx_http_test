package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension) @:using(stdgo._internal.context.Context_t_backgroundctx_static_extension.T_backgroundCtx_static_extension) class T_backgroundCtx {
    @:embedded
    public var _emptyCtx : stdgo._internal.context.Context_t_emptyctx.T_emptyCtx = ({} : stdgo._internal.context.Context_t_emptyctx.T_emptyCtx);
    public function new(?_emptyCtx:stdgo._internal.context.Context_t_emptyctx.T_emptyCtx) {
        if (_emptyCtx != null) this._emptyCtx = _emptyCtx;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_emptyCtx", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_emptyctxdott_emptyctx.__type__stdgodot_internaldotcontextdotContext_t_emptyctxdotT_emptyCtx }, optional : false }])));
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this._emptyCtx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline;
    public var done(get, never) : () -> stdgo.Chan<{ }>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<{ }> return @:check31 (this._emptyCtx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this._emptyCtx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this._emptyCtx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
    public function __copy__() {
        return new T_backgroundCtx(_emptyCtx);
    }
}
