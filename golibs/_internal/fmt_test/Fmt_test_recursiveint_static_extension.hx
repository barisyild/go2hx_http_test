package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.RecursiveInt_asInterface) class RecursiveInt_static_extension {
    @:keep
    @:tdfield
    static public function scan( _r:stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>, _state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt> = _r;
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(_state, new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1015"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1016"
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_recursiveint.RecursiveInt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_state, (".%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_next, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt }))));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1020"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1021"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                _err = (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1024"
            return _err;
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _next;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1027"
        return _err;
    }
}
