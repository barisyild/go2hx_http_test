package _internal.unicode.utf8_test;
function exampleFullRune():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(228 : stdgo.GoUInt8), (184 : stdgo.GoUInt8), (150 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L132"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_buf), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L133"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }
