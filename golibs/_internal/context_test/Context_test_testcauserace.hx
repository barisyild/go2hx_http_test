package _internal.context_test;
function testCauseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _cause = @:assignType (stdgo._internal.errors.Errors_new_.new_(("TestCauseRace" : stdgo.GoString)) : stdgo.Error);
        var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L804"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L805"
                _cancel(_cause);
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L807"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L810"
            {
                var _err = @:assignType (stdgo._internal.context.Context_cause.cause(_ctx) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L811"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = _cause;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L812"
                        _t.errorf(("Cause returned %v, want %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _cause;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L814"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L816"
            stdgo._internal.runtime.Runtime_gosched.gosched();
        };
    }
