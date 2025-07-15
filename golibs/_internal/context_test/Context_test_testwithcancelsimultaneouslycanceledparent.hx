package _internal.context_test;
function testWithCancelSimultaneouslyCanceledParent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L507"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.context.Context_withcancelcause.withCancelCause(stdgo._internal.context.Context_background.background()), _parent:stdgo._internal.context.Context_context.Context = __tmp__._0, _pcancel:stdgo._internal.context.Context_cancelcausefunc.CancelCauseFunc = __tmp__._1;
var _cause = @:assignType (stdgo._internal.fmt.Fmt_errorf.errorf(("Because!" : stdgo.GoString)) : stdgo.Error);
//"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L510"
                {
                    final __tmp__0 = _cause;
                    stdgo.Go.routine(() -> _pcancel(__tmp__0));
                };
var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_parent), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L513"
                _c.done().__get__();
//"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L514"
                {
                    var __0 = @:assignType (_c.err() : stdgo.Error), __1 = @:assignType (stdgo._internal.context.Context_canceled.canceled : stdgo.Error);
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
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L515"
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
//"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L517"
                {
                    var __0 = @:assignType (stdgo._internal.context.Context_cause.cause(_c) : stdgo.Error), __1 = @:assignType (_cause : stdgo.Error);
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
                        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L518"
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
                _i++;
            };
        };
    }
