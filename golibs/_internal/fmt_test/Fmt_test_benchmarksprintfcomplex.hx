package _internal.fmt_test;
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1328"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1329"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%f" : stdgo.GoString), new stdgo.AnyInterface(new stdgo.GoComplex128(5.23184f64, 5.23184f64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(complex128_kind))));
            };
        });
    }
