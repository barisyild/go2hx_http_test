package _internal.fmt_test;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L47"
        if (_got != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_test.go#L48"
            _t.error(new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("!=" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
