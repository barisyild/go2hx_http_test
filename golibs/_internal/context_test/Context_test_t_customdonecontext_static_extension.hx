package _internal.context_test;
@:keep @:allow(_internal.context_test.Context_test.T_customDoneContext_asInterface) class T_customDoneContext_static_extension {
    @:keep
    @:tdfield
    static public function done( _c:stdgo.Ref<_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext>):stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17> {
        @:recv var _c:stdgo.Ref<_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext> = _c;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L844"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
