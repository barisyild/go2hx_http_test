package _internal.fmt_test;
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _stringer = @:assignType ((12345 : _internal.fmt_test.Fmt_test_i.I) : _internal.fmt_test.Fmt_test_i.I);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1371"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1372"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_stringer, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_idoti.__type___internaldotfmt_testdotFmt_test_idotI), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_idoti.__type___internaldotfmt_testdotFmt_test_idotI)));
            };
        });
    }
