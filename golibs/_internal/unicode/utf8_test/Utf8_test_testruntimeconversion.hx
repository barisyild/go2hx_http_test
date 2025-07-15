package _internal.unicode.utf8_test;
function testRuntimeConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L236"
        if (_internal.unicode.utf8_test.Utf8_test__teststrings._testStrings != null) for (__0 => _ts in _internal.unicode.utf8_test.Utf8_test__teststrings._testStrings) {
            var _count = @:assignType (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_ts?.__copy__()) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L238"
            {
                var _n = @:assignType (_internal.unicode.utf8_test.Utf8_test__runtimerunecount._runtimeRuneCount(_ts?.__copy__()) : stdgo.GoInt);
                if (_n != (_count)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L239"
                    _t.errorf(("%q: len([]rune()) counted %d runes; got %d from RuneCountInString" : stdgo.GoString), new stdgo.AnyInterface(_ts, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L240"
                    break;
                };
            };
            var _runes = (_ts : stdgo.Slice<stdgo.GoInt32>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L244"
            {
                var _n = @:assignType (_runes.length : stdgo.GoInt);
                if (_n != (_count)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L245"
                    _t.errorf(("%q: []rune() has length %d; got %d from RuneCountInString" : stdgo.GoString), new stdgo.AnyInterface(_ts, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_count, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L246"
                    break;
                };
            };
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L249"
            if (_ts != null) for (__1 => _r in _ts) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L250"
                if (_r != (_runes[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L251"
                    _t.errorf(("%q[%d]: expected %c (%U); got %c (%U)" : stdgo.GoString), new stdgo.AnyInterface(_ts, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_runes[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_runes[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L253"
                _i++;
            };
        };
    }
