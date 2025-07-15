package _internal.unicode.utf8_test;
function exampleRuneCount():Void {
        var _buf = ((("Hello, 世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L150"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("bytes =" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_buf.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L151"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("runes =" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_buf), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }
