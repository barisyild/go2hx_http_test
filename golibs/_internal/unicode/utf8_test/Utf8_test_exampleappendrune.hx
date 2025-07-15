package _internal.unicode.utf8_test;
function exampleAppendRune():Void {
        var _buf1 = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((null : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        var _buf2 = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(((("init" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (65536 : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L221"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((_buf1 : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L222"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((_buf2 : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
