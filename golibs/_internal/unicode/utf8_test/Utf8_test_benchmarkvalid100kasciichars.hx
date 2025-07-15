package _internal.unicode.utf8_test;
function benchmarkValid100KASCIIChars(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = (_internal.unicode.utf8_test.Utf8_test__ascii100000._ascii100000 : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L569"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L570"
                stdgo._internal.unicode.utf8.Utf8_valid.valid(_s);
                _i++;
            };
        };
    }
