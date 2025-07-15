package _internal.fmt_test;
function testHexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _h:_internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes = new _internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(("0123\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_h, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_hexbytesdott_hexbytes.__type___internaldotfmt_testdotFmt_test_t_hexbytesdotT_hexBytes })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_hexbytesdott_hexbytes.__type___internaldotfmt_testdotFmt_test_t_hexbytesdotT_hexBytes), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_hexbytesdott_hexbytes.__type___internaldotfmt_testdotFmt_test_t_hexbytesdotT_hexBytes })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1325"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1326"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1328"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1329"
            _t.fatalf(("expected 1 item; scanned %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1331"
        if (((_h[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) || (_h[(1 : stdgo.GoInt)] != (35 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1332"
            _t.fatalf(("expected 0123 got %x" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_h, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_hexbytesdott_hexbytes.__type___internaldotfmt_testdotFmt_test_t_hexbytesdotT_hexBytes), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_hexbytesdott_hexbytes.__type___internaldotfmt_testdotFmt_test_t_hexbytesdotT_hexBytes)));
        };
    }
