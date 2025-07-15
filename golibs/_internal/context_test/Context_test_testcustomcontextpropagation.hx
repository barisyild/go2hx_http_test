package _internal.context_test;
function testCustomContextPropagation(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cause = @:assignType (stdgo._internal.errors.Errors_new_.new_(("TestCustomContextPropagation" : stdgo.GoString)) : stdgo.Error);
            var _donec = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel1:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
            var _ctx2 = (stdgo.Go.setRef(({ context : _ctx1, _donec : _donec } : _internal.context_test.Context_test_t_customdonecontext.T_customDoneContext), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_customdonecontextdott_customdonecontext.__type___internaldotcontext_testdotContext_test_t_customdonecontextdotT_customDoneContext })) : stdgo.Ref<_internal.context_test.Context_test_t_customdonecontext.T_customDoneContext>);
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface(_ctx2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_customdonecontextdott_customdonecontext.__type___internaldotcontext_testdotContext_test_t_customdonecontextdotT_customDoneContext }))), _ctx3:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel3:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel3;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L858"
            _cancel1(_cause);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L859"
            if (_donec != null) _donec.__close__();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L861"
            _ctx3.done().__get__();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L862"
            {
                var __0 = @:assignType (_ctx3.err() : stdgo.Error), __1 = @:assignType (stdgo._internal.context.Context_canceled.canceled : stdgo.Error);
var _want = __1, _got = __0;
                if (({
                    final __t__ = _got;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = _want;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L863"
                    _t.errorf(("child not canceled; got = %v, want = %v" : stdgo.GoString), ({
                        final __t__ = _got;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), ({
                        final __t__ = _want;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L865"
            {
                var __0 = @:assignType (stdgo._internal.context.Context_cause.cause(_ctx3) : stdgo.Error), __1 = @:assignType (_cause : stdgo.Error);
var _want = __1, _got = __0;
                if (({
                    final __t__ = _got;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = _want;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L866"
                    _t.errorf(("child has wrong cause; got = %v, want = %v" : stdgo.GoString), ({
                        final __t__ = _got;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), ({
                        final __t__ = _want;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
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
