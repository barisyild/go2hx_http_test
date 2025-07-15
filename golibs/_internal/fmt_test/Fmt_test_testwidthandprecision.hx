package _internal.fmt_test;
function testWidthAndPrecision(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1686"
        if (_internal.fmt_test.Fmt_test__startests._startests != null) for (_i => _tt in _internal.fmt_test.Fmt_test__startests._startests) {
            var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), ...(_tt._in : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1688"
            if (_s != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1689"
                _t.errorf(("#%d: %q: got %q expected %q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._fmt, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
