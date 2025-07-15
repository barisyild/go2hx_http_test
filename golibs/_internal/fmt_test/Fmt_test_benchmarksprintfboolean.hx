package _internal.fmt_test;
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1336"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1337"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%t" : stdgo.GoString), new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        });
    }
