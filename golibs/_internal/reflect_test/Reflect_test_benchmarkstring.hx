package _internal.reflect_test;
function benchmarkString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L46"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                _internal.reflect_test.Reflect_test__sinkall._sinkAll.rawString = (_internal.reflect_test.Reflect_test__sourceall._sourceAll.string.string() : stdgo.GoString).__copy__();
                _i++;
            };
        };
    }
