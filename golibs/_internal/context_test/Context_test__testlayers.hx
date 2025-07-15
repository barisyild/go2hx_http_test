package _internal.context_test;
function _testLayers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _seed:stdgo.GoInt64, _testTimeout:Bool):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L408"
            _t.parallel();
            var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource(_seed));
            var _errorf = function(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):Void {
                var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L412"
                _t.errorf(stdgo._internal.fmt.Fmt_sprintf.sprintf(("seed=%d: %s" : stdgo.GoString), new stdgo.AnyInterface(_seed, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
            };
            {};
            {};
            var _vals:stdgo.Slice<stdgo.Pointer<_internal.context_test.Context_test_t__testlayers___localname___value_10521.T__testLayers___localname___value_10521>> = (null : stdgo.Slice<stdgo.Pointer<_internal.context_test.Context_test_t__testlayers___localname___value_10521.T__testLayers___localname___value_10521>>), _cancels:stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc> = (null : stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>), _numTimers:stdgo.GoInt = (0 : stdgo.GoInt), _ctx = stdgo._internal.context.Context_background.background();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L424"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while (((((_i < (30 : stdgo.GoInt) : Bool) || _numTimers == ((0 : stdgo.GoInt)) : Bool) || (_cancels.length) == ((0 : stdgo.GoInt)) : Bool) || (_vals.length == (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L425"
                    {
                        final __value__ = _r.intn((3 : stdgo.GoInt));
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            var _v = stdgo.Go.pointer(((0 : stdgo.GoInt) : _internal.context_test.Context_test_t__testlayers___localname___value_10521.T__testLayers___localname___value_10521));
                            _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 }))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 }))));
                            _vals = (_vals.__append__(_v) : stdgo.Slice<stdgo.Pointer<_internal.context_test.Context_test_t__testlayers___localname___value_10521.T__testLayers___localname___value_10521>>);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                            {
                                var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx);
                                _ctx = @:tmpset0 __tmp__._0;
                                _cancel = @:tmpset0 __tmp__._1;
                            };
                            _cancels = (_cancels.__append__(_cancel) : stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                            var _d = @:assignType (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration);
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L437"
                            if (_testTimeout) {
                                _d = (1000000i64 : stdgo._internal.time.Time_duration.Duration);
                            };
                            {
                                var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _d);
                                _ctx = @:tmpset0 __tmp__._0;
                                _cancel = @:tmpset0 __tmp__._1;
                            };
                            _cancels = (_cancels.__append__(_cancel) : stdgo.Slice<stdgo._internal.context.Context_cancelfunc.CancelFunc>);
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L442"
                            _numTimers++;
                        };
                    };
                    _i++;
                };
            };
            var _checkValues = @:assignType (function(_when:stdgo.GoString):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L446"
                if (_vals != null) for (__0 => _key in _vals) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L447"
                    {
                        var _val = (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 })))), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 })) : stdgo.Pointer<_internal.context_test.Context_test_t__testlayers___localname___value_10521.T__testLayers___localname___value_10521>);
                        if (_key != (_val)) {
                            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L448"
                            _errorf(("%s: ctx.Value(%p) = %p want %p" : stdgo.GoString), new stdgo.AnyInterface(_when, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 }))), new stdgo.AnyInterface(_val, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 }))), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t__testlayers___localname___value_10521dott__testlayers___localname___value_10521.__type___internaldotcontext_testdotContext_test_t__testlayers___localname___value_10521dotT__testLayers___localname___value_10521 }))));
                        };
                    };
                };
            } : stdgo.GoString -> Void);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L452"
            if (!_testTimeout) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L453"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L455"
                                    _errorf(("ctx should not be canceled yet" : stdgo.GoString));
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
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L459"
            {
                var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(({
                    final __t__ = _ctx;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))?.__copy__() : stdgo.GoString), __1 = @:assignType (("context.Background." : stdgo.GoString) : stdgo.GoString);
var _prefix = __1, _s = __0;
                if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L460"
                    _t.errorf(("ctx.String() = %q want prefix %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_prefix, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L462"
            _t.log(({
                final __t__ = _ctx;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L463"
            _checkValues(("before cancel" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L464"
            if (_testTimeout) {
                var _d = @:assignType (_internal.context_test.Context_test__quiescent._quiescent(_t) : stdgo._internal.time.Time_duration.Duration);
                var _timer = stdgo._internal.time.Time_newtimer.newTimer(_d);
                {
                    final __f__ = _timer.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L468"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
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
                                __c__1 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L471"
                                    _errorf(("ctx should have timed out after %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L473"
                _checkValues(("after timeout" : stdgo.GoString));
            } else {
                var _cancel = @:assignType (_cancels[(_r.intn((_cancels.length)) : stdgo.GoInt)] : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L476"
                _cancel();
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L477"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
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
                                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L480"
                                _errorf(("ctx should be canceled" : stdgo.GoString));
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L482"
                _checkValues(("after cancel" : stdgo.GoString));
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
