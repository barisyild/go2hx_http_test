package _internal.fmt_test;
function testScanNotPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newreader.newReader(("1" : stdgo.GoString));
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L742"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L743"
            _t.error(new stdgo.AnyInterface(("expected error scanning non-pointer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L745"
            _t.errorf(("expected pointer error scanning non-pointer, got: %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
