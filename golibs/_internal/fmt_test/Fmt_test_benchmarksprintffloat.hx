package _internal.fmt_test;
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1320"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1321"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%g" : stdgo.GoString), new stdgo.AnyInterface((5.23184 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        });
    }
