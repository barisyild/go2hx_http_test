package _internal.unicode.utf8_test;
function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L460"
        if (_internal.unicode.utf8_test.Utf8_test__runelentests._runelentests != null) for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__runelentests._runelentests) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L461"
            {
                var _size = @:assignType (stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_tt._r) : stdgo.GoInt);
                if (_size != (_tt._size)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L462"
                    _t.errorf(("RuneLen(%#U) = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_tt._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
    }
