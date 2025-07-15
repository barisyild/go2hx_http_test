package _internal.context_test;
function testCanceledTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _o = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(_c) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L190"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L191"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _c.done();
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L194"
                        _t.errorf(("<-c.Done() blocked, but shouldn\'t have" : stdgo.GoString));
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L196"
        {
            var _e = @:assignType (_c.err() : stdgo.Error);
            if (({
                final __t__ = _e;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = stdgo._internal.context.Context_canceled.canceled;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L197"
                _t.errorf(("c.Err() == %v want %v" : stdgo.GoString), ({
                    final __t__ = _e;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = stdgo._internal.context.Context_canceled.canceled;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
