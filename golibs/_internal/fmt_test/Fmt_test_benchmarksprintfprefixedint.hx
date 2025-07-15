package _internal.fmt_test;
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1312"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1313"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("This is some meaningless prefix text that needs to be scanned %d" : stdgo.GoString), new stdgo.AnyInterface((6 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        });
    }
