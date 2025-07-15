package _internal.fmt_test;
function testFmtInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _i1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        _i1 = new stdgo.AnyInterface(("abc" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), _i1)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L46"
        if (_s != (("abc" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L47"
            _t.errorf(("Sprintf(\"%%s\", empty(\"abc\")) = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("abc" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
