package _internal.unicode.utf8_test;
function exampleValidString():Void {
        var _valid = @:assignType (("Hello, 世界" : stdgo.GoString) : stdgo.GoString);
        var _invalid = @:assignType (((new stdgo.Slice<stdgo.GoUInt8>(3, 3, ...[(255 : stdgo.GoUInt8), (254 : stdgo.GoUInt8), (253 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L211"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_validstring.validString(_valid?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L212"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.unicode.utf8.Utf8_validstring.validString(_invalid?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
    }
