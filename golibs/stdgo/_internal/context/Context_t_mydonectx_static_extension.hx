package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.context.Context.T_myDoneCtx_asInterface) class T_myDoneCtx_static_extension {
    @:keep
    @:tdfield
    static public function done( _d:stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx>):stdgo.Chan<stdgo._internal.context.Context_t__struct_4.T__struct_4> {
        @:recv var _d:stdgo.Ref<stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx> = _d;
        var _c = (new stdgo.Chan<stdgo._internal.context.Context_t__struct_4.T__struct_4>(0, () -> ({  } : stdgo._internal.context.Context_t__struct_4.T__struct_4)) : stdgo.Chan<stdgo._internal.context.Context_t__struct_4.T__struct_4>);
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L232"
        return _c;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:stdgo._internal.context.Context_t_mydonectx.T_myDoneCtx):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
