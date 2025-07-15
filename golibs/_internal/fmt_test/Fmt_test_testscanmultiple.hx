package _internal.fmt_test;
function testScanMultiple(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _a__pointer__ = stdgo.Go.pointer(_a);
        var _s:stdgo.GoString = ("" : stdgo.GoString), _s__pointer__ = stdgo.Go.pointer(_s);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("123abc" : stdgo.GoString), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_s__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L687"
        if (_n != ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L688"
            _t.errorf(("Sscan count error: expected 2: got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L690"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L691"
            _t.errorf(("Sscan expected no error; got %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L693"
        if (((_a != (123 : stdgo.GoInt)) || (_s != ("abc" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L694"
            _t.errorf(("Sscan wrong values: got (%d %q) expected (123 \"abc\")" : stdgo.GoString), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("asdf" : stdgo.GoString), new stdgo.AnyInterface(_s__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L697"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L698"
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L700"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L701"
            _t.errorf(("Sscan expected error; got none: %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L703"
        if (_s != (("asdf" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L704"
            _t.errorf(("Sscan wrong values: got %q expected \"asdf\"" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
