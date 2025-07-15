package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension) @:using(stdgo._internal.context.Context_t_mydonectx_static_extension.T_myDoneCtx_static_extension) class T_myDoneCtx {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?context:stdgo._internal.context.Context_context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "context", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }])));
    public var deadline(get, never) : () -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_deadline():() -> { var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:check31 (this.context ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this.context ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this.context ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
    public function __copy__() {
        return new T_myDoneCtx(context);
    }
}
