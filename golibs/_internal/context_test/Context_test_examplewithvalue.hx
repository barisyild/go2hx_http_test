package _internal.context_test;
function exampleWithValue():Void {
        {};
        var _f = @:assignType (function(_ctx:stdgo._internal.context.Context_context.Context, _k:_internal.context_test.Context_test_t_examplewithvalue___localname___favcontextkey_2611.T_exampleWithValue___localname___favContextKey_2611):Void {
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L107"
            {
                var _v = @:assignType (_ctx.value(new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_examplewithvalue___localname___favcontextkey_2611dott_examplewithvalue___localname___favcontextkey_2611.__type___internaldotcontext_testdotContext_test_t_examplewithvalue___localname___favcontextkey_2611dotT_exampleWithValue___localname___favContextKey_2611))) : stdgo.AnyInterface);
                if (({
                    final value = _v;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L108"
                    stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("found value:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _v);
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L109"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L111"
            stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("key not found:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_examplewithvalue___localname___favcontextkey_2611dott_examplewithvalue___localname___favcontextkey_2611.__type___internaldotcontext_testdotContext_test_t_examplewithvalue___localname___favcontextkey_2611dotT_exampleWithValue___localname___favContextKey_2611)));
        } : (stdgo._internal.context.Context_context.Context, _internal.context_test.Context_test_t_examplewithvalue___localname___favcontextkey_2611.T_exampleWithValue___localname___favContextKey_2611) -> Void);
        var _k = @:assignType ((("language" : stdgo.GoString) : _internal.context_test.Context_test_t_examplewithvalue___localname___favcontextkey_2611.T_exampleWithValue___localname___favContextKey_2611) : _internal.context_test.Context_test_t_examplewithvalue___localname___favcontextkey_2611.T_exampleWithValue___localname___favContextKey_2611);
        var _ctx = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_examplewithvalue___localname___favcontextkey_2611dott_examplewithvalue___localname___favcontextkey_2611.__type___internaldotcontext_testdotContext_test_t_examplewithvalue___localname___favcontextkey_2611dotT_exampleWithValue___localname___favContextKey_2611)), new stdgo.AnyInterface(("Go" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L117"
        _f(_ctx, _k);
        //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L118"
        _f(_ctx, (("color" : stdgo.GoString) : _internal.context_test.Context_test_t_examplewithvalue___localname___favcontextkey_2611.T_exampleWithValue___localname___favContextKey_2611));
    }
