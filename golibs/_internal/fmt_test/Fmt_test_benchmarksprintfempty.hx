package _internal.fmt_test;
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1247"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1248"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf((stdgo.Go.str() : stdgo.GoString)?.__copy__());
            };
        });
    }
