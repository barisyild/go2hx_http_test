package _internal.fmt_test;
function _testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _scan:(stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>, stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) -> stdgo.Error):Void {
        var _r = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_recursiveint.RecursiveInt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>);
        var _ints = _internal.fmt_test.Fmt_test__makeints._makeInts((800 : stdgo.GoInt));
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_ints);
        var _err = @:assignType (_scan(_r, _buf) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1083"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1084"
            _t.error(new stdgo.AnyInterface(("unexpected error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _i = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1087"
        while (({
            final value = _r;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1088"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i != (_i)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1089"
                _t.fatalf(("bad scan: expected %d got %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1091"
            _i++;
            _r = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1093"
        if ((_i - (1 : stdgo.GoInt) : stdgo.GoInt) != ((800 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1094"
            _t.fatalf(("bad scan count: expected %d got %d" : stdgo.GoString), new stdgo.AnyInterface((800 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
