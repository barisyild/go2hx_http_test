package _internal.unicode.utf8_test;
function benchmarkValidStringLongJapanese(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L619"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L620"
                stdgo._internal.unicode.utf8.Utf8_validstring.validString(_internal.unicode.utf8_test.Utf8_test__longstringjapanese._longStringJapanese.__copy__());
                _i++;
            };
        };
    }
