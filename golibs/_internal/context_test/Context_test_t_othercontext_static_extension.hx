package _internal.context_test;
@:keep @:allow(_internal.context_test.Context_test.T_otherContext_asInterface) class T_otherContext_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:_internal.context_test.Context_test_t_othercontext.T_otherContext, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:_internal.context_test.Context_test_t_othercontext.T_otherContext):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:_internal.context_test.Context_test_t_othercontext.T_otherContext):stdgo.Chan<{ }> return @:_5 __self__.done();
    @:embedded
    @:embeddededffieldsffun
    public static function deadline( __self__:_internal.context_test.Context_test_t_othercontext.T_otherContext):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return @:_5 __self__.deadline();
}
