package _internal.reflect_test;
function benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_xm.XM() : _internal.reflect_test.Reflect_test_xm.XM), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_xmdotxm.__type___internaldotreflect_testdotReflect_test_xmdotXM), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_xmdotxm.__type___internaldotreflect_testdotReflect_test_xmdotXM))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L328"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L329"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L330"
                stdgo._internal.reflect.Reflect_new_.new_(_v);
            };
        });
    }
