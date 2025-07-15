package _internal.bytes_test;
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _b1 = ((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _b2 = _b1;
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L189"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L190"
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, _b2) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L191"
                    _b.fatal(new stdgo.AnyInterface(("b1 != b2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _i++;
            };
        };
    }
