package stdgo._internal.context;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.time.Time;
function xTestCancelRemoves(_t:stdgo._internal.context.Context_t_testingt.T_testingT):Void {
        var _checkChildren = @:assignType (function(_when:stdgo.GoString, _ctx:stdgo._internal.context.Context_context.Context, _want:stdgo.GoInt):Void {
            //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L195"
            {
                var _got = @:assignType ((@:checkr (stdgo.Go.typeAssert(({
                    final __t__ = _ctx;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_t_cancelctxdott_cancelctx.__type__stdgodot_internaldotcontextdotContext_t_cancelctxdotT_cancelCtx })) : stdgo.Ref<stdgo._internal.context.Context_t_cancelctx.T_cancelCtx>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length : stdgo.GoInt);
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L196"
                    _t.errorf(("%s: context has %d children, want %d" : stdgo.GoString), new stdgo.AnyInterface(_when, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        } : (stdgo.GoString, stdgo._internal.context.Context_context.Context, stdgo.GoInt) -> Void);
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L201"
        _checkChildren(("after creation" : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), __1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L203"
        _checkChildren(("with WithCancel child " : stdgo.GoString), _ctx, (1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L204"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L205"
        _checkChildren(("after canceling WithCancel child" : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background());
            _ctx = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L208"
        _checkChildren(("after creation" : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, (3600000000000i64 : stdgo._internal.time.Time_duration.Duration));
            _cancel = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L210"
        _checkChildren(("with WithTimeout child " : stdgo.GoString), _ctx, (1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L211"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L212"
        _checkChildren(("after canceling WithTimeout child" : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
        {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background());
            _ctx = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L215"
        _checkChildren(("after creation" : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
        var _stop = @:assignType (stdgo._internal.context.Context_afterfunc.afterFunc(_ctx, function():Void {}) : () -> Bool);
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L217"
        _checkChildren(("with AfterFunc child " : stdgo.GoString), _ctx, (1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L218"
        _stop();
        //"file:///Users/o/.go/go1.21.3/src/context/context_test.go#L219"
        _checkChildren(("after stopping AfterFunc child " : stdgo.GoString), _ctx, (0 : stdgo.GoInt));
    }
