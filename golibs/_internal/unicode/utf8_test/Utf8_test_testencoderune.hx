package _internal.unicode.utf8_test;
function testEncodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L120"
        if (_internal.unicode.utf8_test.Utf8_test__utf8map._utf8map != null) for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
            var _n = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _m._r) : stdgo.GoInt);
            var _b1 = (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L125"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_b, _b1)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L126"
                _t.errorf(("EncodeRune(%#04x) = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_m._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
        };
    }
