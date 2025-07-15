package _internal.unicode.utf8_test;
function benchmarkAppendJapaneseRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L664"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8_test.go#L665"
                stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (26412 : stdgo.GoInt32));
                _i++;
            };
        };
    }
