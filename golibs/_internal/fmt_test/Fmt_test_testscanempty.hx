package _internal.fmt_test;
function testScanEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1:stdgo.GoString = ("" : stdgo.GoString), _s2:stdgo.GoString = ("" : stdgo.GoString), _s2__pointer__ = stdgo.Go.pointer(_s2), _s1__pointer__ = stdgo.Go.pointer(_s1);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("abc" : stdgo.GoString), new stdgo.AnyInterface(_s1__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_s2__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L712"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L713"
            _t.errorf(("Sscan count error: expected 1: got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L715"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L716"
            _t.error(new stdgo.AnyInterface(("Sscan <one item> expected error; got none" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L718"
        if (_s1 != (("abc" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L719"
            _t.errorf(("Sscan wrong values: got %q expected \"abc\"" : stdgo.GoString), new stdgo.AnyInterface(_s1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan((stdgo.Go.str() : stdgo.GoString)?.__copy__(), new stdgo.AnyInterface(_s1__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_s2__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L722"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L723"
            _t.errorf(("Sscan count error: expected 0: got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L725"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L726"
            _t.error(new stdgo.AnyInterface(("Sscan <empty> expected error; got none" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("\"\"" : stdgo.GoString), ("%q" : stdgo.GoString), new stdgo.AnyInterface(_s1__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L730"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L731"
            _t.errorf(("Sscanf count error: expected 1: got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L733"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L734"
            _t.errorf(("Sscanf <empty> expected no error with quoted string; got %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
