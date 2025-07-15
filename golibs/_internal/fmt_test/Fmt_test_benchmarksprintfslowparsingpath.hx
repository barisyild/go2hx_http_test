package _internal.fmt_test;
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1280"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1281"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.v" : stdgo.GoString), (null : stdgo.AnyInterface));
            };
        });
    }
