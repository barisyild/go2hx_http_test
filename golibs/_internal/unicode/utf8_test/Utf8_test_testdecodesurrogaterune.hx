package _internal.unicode.utf8_test;
function testDecodeSurrogateRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L201"
        if (_internal.unicode.utf8_test.Utf8_test__surrogatemap._surrogateMap != null) for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__surrogatemap._surrogateMap) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_b), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L204"
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L205"
                _t.errorf(("DecodeRune(%q) = %x, %d want %x, %d" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((65533 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            var _s = @:assignType (_m._str?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__());
                _r = @:tmpset0 __tmp__._0;
                _size = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L209"
            if (((_r != (65533 : stdgo.GoInt32)) || (_size != (1 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L210"
                _t.errorf(("DecodeRuneInString(%q) = %x, %d want %x, %d" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((65533 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
