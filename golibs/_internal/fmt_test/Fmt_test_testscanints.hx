package _internal.fmt_test;
function testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1067"
        _internal.fmt_test.Fmt_test__testscanints._testScanInts(_t, _internal.fmt_test.Fmt_test__scanints._scanInts);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1068"
        _internal.fmt_test.Fmt_test__testscanints._testScanInts(_t, function(_r:stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
            var _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(stdgo.Go.asInterface(_r, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt }))));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1070"
            return _err;
        });
    }
