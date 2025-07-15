package _internal.reflect_test;
function benchmarkFieldByName3(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _t = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_r0.R0() : _internal.reflect_test.Reflect_test_r0.R0), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r0dotr0.__type___internaldotreflect_testdotReflect_test_r0dotR0), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r0dotr0.__type___internaldotreflect_testdotReflect_test_r0dotR0))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L295"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L296"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L297"
                _t.fieldByName(("X" : stdgo.GoString));
            };
        });
    }
