package _internal.unicode.utf8_test;
function exampleEncodeRune_outOfRange():Void {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>(3, 3, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32), (65533 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L119"
        if (_runes != null) for (_i => _c in _runes) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _size = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_buf, _c) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/example_test.go#L122"
            stdgo._internal.fmt.Fmt_printf.printf(("%d: %d %[2]s %d\n" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
