package _internal.fmt_test;
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1296"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1297"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), new stdgo.AnyInterface((5 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        });
    }
