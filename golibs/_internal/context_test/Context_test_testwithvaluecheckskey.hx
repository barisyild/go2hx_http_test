package _internal.context_test;
function testWithValueChecksKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _panicVal = @:assignType (_internal.context_test.Context_test__recoveredvalue._recoveredValue(function():Void {
            stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(((("foo" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(("bar" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        }) : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L525"
        if (({
            final value = _panicVal;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L526"
            _t.error(new stdgo.AnyInterface(("expected panic" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _panicVal = _internal.context_test.Context_test__recoveredvalue._recoveredValue(function():Void {
            stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), (null : stdgo.AnyInterface), new stdgo.AnyInterface(("bar" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        });
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L529"
        {
            var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(_panicVal)?.__copy__() : stdgo.GoString), __1 = @:assignType (("nil key" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L530"
                _t.errorf(("panic = %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
