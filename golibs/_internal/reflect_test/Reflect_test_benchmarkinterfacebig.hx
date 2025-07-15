package _internal.reflect_test;
function benchmarkInterfaceBig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_s.S() : _internal.reflect_test.Reflect_test_s.S), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sdots.__type___internaldotreflect_testdotReflect_test_sdotS), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sdots.__type___internaldotreflect_testdotReflect_test_sdotS)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L309"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L310"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L311"
                _v.interface_();
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L314"
        _b.stopTimer();
    }
