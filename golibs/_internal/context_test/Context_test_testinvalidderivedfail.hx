package _internal.context_test;
function testInvalidDerivedFail(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _panicVal = @:assignType (_internal.context_test.Context_test__recoveredvalue._recoveredValue(function():Void {
            stdgo._internal.context.Context_withcancel.withCancel((null : stdgo._internal.context.Context_context.Context));
        }) : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L536"
        if (({
            final value = _panicVal;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L537"
            _t.error(new stdgo.AnyInterface(("expected panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _panicVal = _internal.context_test.Context_test__recoveredvalue._recoveredValue(function():Void {
            stdgo._internal.context.Context_withdeadline.withDeadline((null : stdgo._internal.context.Context_context.Context), stdgo._internal.time.Time_now.now().add((1000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L540"
        if (({
            final value = _panicVal;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L541"
            _t.error(new stdgo.AnyInterface(("expected panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _panicVal = _internal.context_test.Context_test__recoveredvalue._recoveredValue(function():Void {
            stdgo._internal.context.Context_withvalue.withValue((null : stdgo._internal.context.Context_context.Context), new stdgo.AnyInterface(("foo" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("bar" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        });
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L544"
        if (({
            final value = _panicVal;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L545"
            _t.error(new stdgo.AnyInterface(("expected panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
