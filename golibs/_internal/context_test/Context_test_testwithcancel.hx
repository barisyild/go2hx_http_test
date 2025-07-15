package _internal.context_test;
function testWithCancel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo._internal.context.Context_background.background()), _c1:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L91"
        {
            var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(({
                final __t__ = _c1;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))?.__copy__() : stdgo.GoString), __1 = @:assignType (("context.Background.WithCancel" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L92"
                _t.errorf(("c1.String() = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _o = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(_c1) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext)), _c2:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _contexts = (new stdgo.Slice<stdgo._internal.context.Context_context.Context>(3, 3, ...[_c1, stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), _c2]) : stdgo.Slice<stdgo._internal.context.Context_context.Context>);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L99"
        if (_contexts != null) for (_i => _c in _contexts) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L100"
            {
                var _d = _c.done();
                if (_d == null) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L101"
                    _t.errorf(("c[%d].Done() == %v want non-nil" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_d, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L103"
            {
                var _e = @:assignType (_c.err() : stdgo.Error);
                if (_e != null) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L104"
                    _t.errorf(("c[%d].Err() == %v want nil" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _e;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L107"
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
                            var _x = __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L109"
                                _t.errorf(("<-c.Done() == %v want nothing (it should block)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.structType([])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([]))));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L114"
        _cancel();
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L115"
        if (_contexts != null) for (_i => _c in _contexts) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L116"
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
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L119"
                            _t.errorf(("<-c[%d].Done() blocked, but shouldn\'t have" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L121"
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
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L122"
                    _t.errorf(("c[%d].Err() == %v want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
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
        };
    }
