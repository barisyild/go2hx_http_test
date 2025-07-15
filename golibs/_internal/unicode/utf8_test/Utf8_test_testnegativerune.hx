package _internal.unicode.utf8_test;
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _errorbuf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _errorbuf = (_errorbuf.__slice__((0 : stdgo.GoInt), stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_errorbuf, (65533 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__slice__((0 : stdgo.GoInt), stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(_buf, (-1 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L411"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_buf, _errorbuf)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L412"
            _t.errorf(("incorrect encoding [% x] for -1; expected [% x]" : stdgo.GoString), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_errorbuf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
    }
