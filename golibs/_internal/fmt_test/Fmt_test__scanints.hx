package _internal.fmt_test;
function _scanInts(_r:stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
        var _err = (null : stdgo.Error);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = null;
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1036"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1037"
            return _err;
        };
        var __tmp__ = _b.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1040"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1041"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                _err = (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1044"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1046"
        if (_c != ((46 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1047"
            return _err;
        };
        var _next = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_recursiveint.RecursiveInt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt })) : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>);
        _err = _internal.fmt_test.Fmt_test__scanints._scanInts(_next, _b);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1051"
        if (_err == null) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _next;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1054"
        return _err;
    }
