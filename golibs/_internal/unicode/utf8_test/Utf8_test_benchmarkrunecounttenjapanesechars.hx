package _internal.unicode.utf8_test;
function benchmarkRuneCountTenJapaneseChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = ((("日本語日本語日本語日" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L541"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L542"
                stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_s);
                _i++;
            };
        };
    }
