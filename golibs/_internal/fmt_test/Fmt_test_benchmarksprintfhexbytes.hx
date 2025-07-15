package _internal.fmt_test;
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = ((("0123456789abcdef" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1353"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1354"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("% #x" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
        });
    }
