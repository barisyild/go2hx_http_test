package _internal.bytes_test;
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _b1 = ((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _b2 = ((("Hello, Gophers" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L199"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L200"
                if (stdgo._internal.bytes.Bytes_compare.compare(_b1, _b2) != ((-1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L201"
                    _b.fatal(new stdgo.AnyInterface(("b1 < b2 failed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                _i++;
            };
        };
    }
