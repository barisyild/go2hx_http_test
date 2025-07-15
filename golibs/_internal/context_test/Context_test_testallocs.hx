package _internal.context_test;
function testAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bg = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L258"
        if ((new stdgo.Slice<_internal.context_test.Context_test_t__struct_18.T__struct_18>(5, 5, ...[({ _desc : ("Background()" : stdgo.GoString), _f : function():Void {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L266"
            stdgo._internal.context.Context_background.background();
        }, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : stdgo._internal.fmt.Fmt_sprintf.sprintf(("WithValue(bg, %v, nil)" : stdgo.GoString), new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)))?.__copy__(), _f : function():Void {
            var _c = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_bg, new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L274"
            _c.value(new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)));
        }, _limit : (3 : stdgo.GoFloat64), _gccgoLimit : (3 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithTimeout(bg, 1*time.Nanosecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_bg, (1i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L283"
            _c.done().__get__();
        }, _limit : (12 : stdgo.GoFloat64), _gccgoLimit : (15 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithCancel(bg)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_bg), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L292"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L293"
            _c.done().__get__();
        }, _limit : (5 : stdgo.GoFloat64), _gccgoLimit : (8 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithTimeout(bg, 5*time.Millisecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_bg, (5000000i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L302"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L303"
            _c.done().__get__();
        }, _limit : (8 : stdgo.GoFloat64), _gccgoLimit : (25 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _f : null, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18)])) : stdgo.Slice<_internal.context_test.Context_test_t__struct_18.T__struct_18>) != null) for (__0 => _test in (new stdgo.Slice<_internal.context_test.Context_test_t__struct_18.T__struct_18>(5, 5, ...[({ _desc : ("Background()" : stdgo.GoString), _f : function():Void {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L266"
            stdgo._internal.context.Context_background.background();
        }, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : stdgo._internal.fmt.Fmt_sprintf.sprintf(("WithValue(bg, %v, nil)" : stdgo.GoString), new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)))?.__copy__(), _f : function():Void {
            var _c = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_bg, new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L274"
            _c.value(new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)));
        }, _limit : (3 : stdgo.GoFloat64), _gccgoLimit : (3 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithTimeout(bg, 1*time.Nanosecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_bg, (1i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L283"
            _c.done().__get__();
        }, _limit : (12 : stdgo.GoFloat64), _gccgoLimit : (15 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithCancel(bg)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_bg), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L292"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L293"
            _c.done().__get__();
        }, _limit : (5 : stdgo.GoFloat64), _gccgoLimit : (8 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18), ({ _desc : ("WithTimeout(bg, 5*time.Millisecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_bg, (5000000i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L302"
            _cancel();
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L303"
            _c.done().__get__();
        }, _limit : (8 : stdgo.GoFloat64), _gccgoLimit : (25 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _f : null, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_t__struct_18.T__struct_18)])) : stdgo.Slice<_internal.context_test.Context_test_t__struct_18.T__struct_18>)) {
            var _limit = @:assignType (_test._limit : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L310"
            if (false) {
                _limit = _test._gccgoLimit;
            };
            var _numRuns = @:assignType (100 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L316"
            if (stdgo._internal.testing.Testing_short.short()) {
                _numRuns = (10 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L319"
            {
                var _n = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun(_numRuns, _test._f) : stdgo.GoFloat64);
                if ((_n > _limit : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L320"
                    _t.errorf(("%s allocs = %f want %d" : stdgo.GoString), new stdgo.AnyInterface(_test._desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface((_limit : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
    }
