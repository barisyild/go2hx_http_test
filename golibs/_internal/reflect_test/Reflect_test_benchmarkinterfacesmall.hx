package _internal.reflect_test;
function benchmarkInterfaceSmall(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((0i64 : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L319"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L320"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L321"
                _v.interface_();
            };
        });
    }
