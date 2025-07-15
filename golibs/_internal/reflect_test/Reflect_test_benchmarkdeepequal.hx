package _internal.reflect_test;
function benchmarkDeepEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L100"
        if (_internal.reflect_test.Reflect_test__deepequalperftests._deepEqualPerfTests != null) for (__1 => _bb in _internal.reflect_test.Reflect_test__deepequalperftests._deepEqualPerfTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L101"
            _b.run((stdgo._internal.reflect.Reflect_valueof.valueOf(_bb._x).type().string() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L102"
                _b.reportAllocs();
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L103"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        _internal.reflect_test.Reflect_test__sink._sink = new stdgo.AnyInterface(stdgo._internal.reflect.Reflect_deepequal.deepEqual(_bb._x, _bb._y), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
                        _i++;
                    };
                };
            });
        };
    }
