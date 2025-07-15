package _internal.reflect_test;
function benchmarkStringLen(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L82"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                _internal.reflect_test.Reflect_test__sinkall._sinkAll.rawInt = _internal.reflect_test.Reflect_test__sourceall._sourceAll.string.len();
                _i++;
            };
        };
    }
