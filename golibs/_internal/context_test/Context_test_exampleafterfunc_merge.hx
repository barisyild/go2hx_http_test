package _internal.context_test;
function exampleAfterFunc_merge():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _mergeCancel = @:assignType (function(_ctx:stdgo._internal.context.Context_context.Context, _cancelCtx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; } {
                var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
                var _stop = @:assignType (stdgo._internal.context.Context_afterfunc.afterFunc(_cancelCtx, function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L241"
                    _cancel(stdgo._internal.context.Context_cause.cause(_cancelCtx));
                }) : () -> Bool);
                //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L243"
                return { _0 : _ctx, _1 : function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L244"
                    _stop();
                    //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L245"
                    _cancel(stdgo._internal.context.Context_canceled.canceled);
                } };
            } : (stdgo._internal.context.Context_context.Context, stdgo._internal.context.Context_context.Context) -> { var _0 : stdgo._internal.context.Context_context.Context; var _1 : stdgo._internal.context.Context_cancelfunc.CancelFunc; });
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel1:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            {
                var _a0 = stdgo._internal.errors.Errors_new_.new_(("ctx1 canceled" : stdgo.GoString));
                final __f__ = _cancel1;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx2:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel2:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var __tmp__ = _mergeCancel(_ctx1, _ctx2), _mergedCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _mergedCancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _mergedCancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L257"
            _cancel2(stdgo._internal.errors.Errors_new_.new_(("ctx2 canceled" : stdgo.GoString)));
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L258"
            _mergedCtx.done().__get__();
            //"file:///Users/o/.go/go1.21.3/src/context/example_test.go#L259"
            stdgo._internal.fmt.Fmt_println.println(({
                final __t__ = stdgo._internal.context.Context_cause.cause(_mergedCtx);
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
