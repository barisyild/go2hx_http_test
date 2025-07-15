package _internal.fmt_test;
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _bytes:stdgo.AnyInterface = new stdgo.AnyInterface(((("日本語日本語日本語日本語" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })));
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1272"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1273"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.3s" : stdgo.GoString), _bytes);
            };
        });
    }
