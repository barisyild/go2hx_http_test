package _internal.context_test;
function testAfterFuncCalledAsynchronously(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            var _donec = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
            var _stop = @:assignType (stdgo._internal.context.Context_afterfunc.afterFunc(_ctx, function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L946"
                _donec.__send__(({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17));
            }) : () -> Bool);
            {
                final __f__ = _stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L949"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L951"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _donec;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = stdgo._internal.time.Time_after.after((3600000000000000i64 : stdgo._internal.time.Time_duration.Duration));
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L954"
                                _t.fatalf(("AfterFunc not called after context is canceled" : stdgo.GoString));
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
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
