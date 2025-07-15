package _internal.fmt_test;
function exampleErrorf():Void {
        {};
        var _err = @:assignType (stdgo._internal.fmt.Fmt_errorf.errorf(("user %q (id %d) not found" : stdgo.GoString), new stdgo.AnyInterface(("bueller" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((17 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L21"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_err.error(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
