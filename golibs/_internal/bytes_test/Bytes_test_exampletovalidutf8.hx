package _internal.bytes_test;
function exampleToValidUTF8():Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L514"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("�" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L515"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(((stdgo.Go.str("a", 255, "b", 192, 175, "c", 255) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((stdgo.Go.str() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L516"
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_tovalidutf8.toValidUTF8(((stdgo.Go.str(237, 160, 128) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), ((("abc" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
    }
