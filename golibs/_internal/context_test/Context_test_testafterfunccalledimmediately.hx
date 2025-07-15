package _internal.context_test;
function testAfterFuncCalledImmediately(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L908"
        _cancel();
        var _donec = (new stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>(0, () -> ({  } : _internal.context_test.Context_test_t__struct_17.T__struct_17)) : stdgo.Chan<_internal.context_test.Context_test_t__struct_17.T__struct_17>);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L910"
        stdgo._internal.context.Context_afterfunc.afterFunc(_ctx, function():Void {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L911"
            if (_donec != null) _donec.__close__();
        });
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L913"
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
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L916"
                            _t.fatalf(("AfterFunc not called for already-canceled context" : stdgo.GoString));
                        };
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
        };
    }
