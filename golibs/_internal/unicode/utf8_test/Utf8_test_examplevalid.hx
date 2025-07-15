package _internal.unicode.utf8_test;
function exampleValid():Void {
        var _valid = ((("Hello, 世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _invalid = (new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L189"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_valid.valid(_valid), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L190"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_valid.valid(_invalid), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }
