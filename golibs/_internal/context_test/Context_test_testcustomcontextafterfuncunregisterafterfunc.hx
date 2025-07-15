package _internal.context_test;
function testCustomContextAfterFuncUnregisterAfterFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext() : _internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_afterfunccontextdott_afterfunccontext.__type___internaldotcontext_testdotContext_test_t_afterfunccontextdotT_afterFuncContext })) : stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>);
        var _stop = @:assignType (stdgo._internal.context.Context_afterfunc.afterFunc(stdgo.Go.asInterface(_ctx0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_afterfunccontextdott_afterfunccontext.__type___internaldotcontext_testdotContext_test_t_afterfunccontextdotT_afterFuncContext })), function():Void {}) : () -> Bool);
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L134"
        {
            var __0 = @:assignType ((@:checkr _ctx0 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.length : stdgo.GoInt), __1 = @:assignType (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L135"
                _t.errorf(("after AfterFunc(ctx0, f): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L137"
        _stop();
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L138"
        {
            var __0 = @:assignType ((@:checkr _ctx0 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.length : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L139"
                _t.errorf(("after stopping AfterFunc(ctx0, f): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
