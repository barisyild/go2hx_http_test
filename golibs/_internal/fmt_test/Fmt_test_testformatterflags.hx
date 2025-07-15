package _internal.fmt_test;
function testFormatterFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1875"
        if (_internal.fmt_test.Fmt_test__formatterflagtests._formatterFlagTests != null) for (__2 => _tt in _internal.fmt_test.Fmt_test__formatterflagtests._formatterFlagTests) {
            var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._in?.__copy__(), _tt._val)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1877"
            if (_s != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1878"
                _t.errorf(("Sprintf(%q, %T) = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_tt._in, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _tt._val, new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
