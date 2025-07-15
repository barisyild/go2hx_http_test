package _internal.unicode.utf8_test;
function testDecodeInvalidSequence(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L322"
        if (_internal.unicode.utf8_test.Utf8_test__invalidsequencetests._invalidSequenceTests != null) for (__0 => _s in _internal.unicode.utf8_test.Utf8_test__invalidsequencetests._invalidSequenceTests) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L324"
            {
                var _want = @:assignType (65533 : stdgo.GoInt32);
                if (_r1 != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L325"
                    _t.errorf(("DecodeRune(%#x) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L326"
                    return;
                };
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L329"
            {
                var _want = @:assignType (65533 : stdgo.GoInt32);
                if (_r2 != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L330"
                    _t.errorf(("DecodeRuneInString(%q) = %#04x, want %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L331"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L333"
            if (_r1 != (_r2)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L334"
                _t.errorf(("DecodeRune(%#x) = %#04x mismatch with DecodeRuneInString(%q) = %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L335"
                return;
            };
            var _r3 = @:assignType (_internal.unicode.utf8_test.Utf8_test__runtimedecoderune._runtimeDecodeRune(_s?.__copy__()) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L338"
            if (_r2 != (_r3)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L339"
                _t.errorf(("DecodeRuneInString(%q) = %#04x mismatch with runtime.decoderune(%q) = %#04x" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_r3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L340"
                return;
            };
        };
    }
