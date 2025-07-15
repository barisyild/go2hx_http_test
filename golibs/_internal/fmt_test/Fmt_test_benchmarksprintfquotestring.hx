package _internal.fmt_test;
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1288"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1289"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), new stdgo.AnyInterface(("日本語日本語日本語" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        });
    }
