package _internal.context_test;
function testTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L168"
        _t.parallel();
        var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_duration.Duration)), _c:stdgo._internal.context.Context_context.Context = __tmp__._0, __0:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L171"
        {
            var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(({
                final __t__ = _c;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))?.__copy__() : stdgo.GoString), __1 = @:assignType (("context.Background.WithDeadline(" : stdgo.GoString) : stdgo.GoString);
var _prefix = __1, _got = __0;
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_got?.__copy__(), _prefix?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L172"
                _t.errorf(("c.String() = %q want prefix %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_prefix, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L174"
        _internal.context_test.Context_test__testdeadline._testDeadline(_c, ("WithTimeout" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_duration.Duration));
            _c = @:tmpset0 __tmp__._0;
        };
        var _o = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(_c) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L178"
        _internal.context_test.Context_test__testdeadline._testDeadline(stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), ("WithTimeout+otherContext" : stdgo.GoString), _t);
        {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), (1000000i64 : stdgo._internal.time.Time_duration.Duration));
            _c = @:tmpset0 __tmp__._0;
        };
        _o = (new _internal.context_test.Context_test_t_othercontext.T_otherContext(_c) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        {
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), (3600000000000000i64 : stdgo._internal.time.Time_duration.Duration));
            _c = @:tmpset0 __tmp__._0;
        };
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L183"
        _internal.context_test.Context_test__testdeadline._testDeadline(_c, ("WithTimeout+otherContext+WithTimeout" : stdgo.GoString), _t);
    }
