package _internal.fmt_test;
function testReorder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1229"
        if (_internal.fmt_test.Fmt_test__reordertests._reorderTests != null) for (__2 => _tt in _internal.fmt_test.Fmt_test__reordertests._reorderTests) {
            var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_tt._fmt?.__copy__(), ...(_tt._val : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1231"
            if (_s != (_tt._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1232"
                _t.errorf(("Sprintf(%q, %v) = <%s> want <%s>" : stdgo.GoString), new stdgo.AnyInterface(_tt._fmt, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._val, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_sedotse.__type___internaldotfmt_testdotFmt_test_sedotSE)), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            } else {};
        };
    }
