package _internal.unicode.utf8_test;
function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L90"
        if (_internal.unicode.utf8_test.Utf8_test__utf8map._utf8map != null) for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L92"
            if (!stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_b)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L93"
                _t.errorf(("FullRune(%q) (%U) = false, want true" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_m._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
            };
            var _s = @:assignType (_m._str?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L96"
            if (!stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_s?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L97"
                _t.errorf(("FullRuneInString(%q) (%U) = false, want true" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m._r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
            };
            var _b1 = (_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L100"
            if (stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_b1)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L101"
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), new stdgo.AnyInterface(_b1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
            var _s1 = @:assignType ((_b1 : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L104"
            if (stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_s1?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L105"
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), new stdgo.AnyInterface(_s1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L108"
        if ((new stdgo.Slice<stdgo.GoString>(2, 2, ...[(stdgo.Go.str(192) : stdgo.GoString)?.__copy__(), (stdgo.Go.str(193) : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__1 => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(stdgo.Go.str(192) : stdgo.GoString)?.__copy__(), (stdgo.Go.str(193) : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L110"
            if (!stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_b)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L111"
                _t.errorf(("FullRune(%q) = false, want true" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L113"
            if (!stdgo._internal.unicode.utf8.Utf8_fullruneinstring.fullRuneInString(_s?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L114"
                _t.errorf(("FullRuneInString(%q) = false, want true" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
