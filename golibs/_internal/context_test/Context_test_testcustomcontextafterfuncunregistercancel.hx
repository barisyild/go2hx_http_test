package _internal.context_test;
function testCustomContextAfterFuncUnregisterCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ctx0 = (stdgo.Go.setRef((new _internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext() : _internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_afterfunccontextdott_afterfunccontext.__type___internaldotcontext_testdotContext_test_t_afterfunccontextdotT_afterFuncContext })) : stdgo.Ref<_internal.context_test.Context_test_t_afterfunccontext.T_afterFuncContext>);
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface(_ctx0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_afterfunccontextdott_afterfunccontext.__type___internaldotcontext_testdotContext_test_t_afterfunccontextdotT_afterFuncContext }))), __0:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L110"
        {
            var __0 = @:assignType ((@:checkr _ctx0 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.length : stdgo.GoInt), __1 = @:assignType (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L111"
                _t.errorf(("after WithCancel(ctx0): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L113"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L114"
        {
            var __0 = @:assignType ((@:checkr _ctx0 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterFuncs.length : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/afterfunc_test.go#L115"
                _t.errorf(("after canceling WithCancel(ctx0): ctx0 has %v afterFuncs, want %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
