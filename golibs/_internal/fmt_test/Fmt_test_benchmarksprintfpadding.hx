package _internal.fmt_test;
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1239"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1240"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%16f" : stdgo.GoString), new stdgo.AnyInterface((1 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        });
    }
