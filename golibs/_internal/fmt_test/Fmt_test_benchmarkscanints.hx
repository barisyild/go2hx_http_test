package _internal.fmt_test;
function benchmarkScanInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1099"
        _b.stopTimer();
        var _ints = _internal.fmt_test.Fmt_test__makeints._makeInts((800 : stdgo.GoInt));
        var _r:_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt = ({} : _internal.fmt_test.Fmt_test_recursiveint.RecursiveInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1102"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_ints);
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1104"
                _b.startTimer();
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1105"
                _internal.fmt_test.Fmt_test__scanints._scanInts((stdgo.Go.setRef(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>), _buf);
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1106"
                _b.stopTimer();
                _i++;
            };
        };
    }
