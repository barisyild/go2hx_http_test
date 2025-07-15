package _internal.unicode.utf8_test;
function exampleEncodeRune():Void {
        var _r = @:assignType (19990 : stdgo.GoInt32);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_buf, _r) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L103"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L104"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }
