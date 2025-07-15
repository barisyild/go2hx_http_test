package _internal.fmt_test;
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1791"
        {
            var _i = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (1114111 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1792"
                if (stdgo._internal.fmt.Fmt_isspace.isSpace(_i) != (stdgo._internal.unicode.Unicode_isspace.isSpace(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1793"
                    _t.errorf(("isSpace(%U) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_isspace.isSpace(_i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo._internal.unicode.Unicode_isspace.isSpace(_i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
                _i++;
            };
        };
    }
