package _internal.fmt_test;
function testMultiLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _input = @:assignType (("abc\ndef\n" : stdgo.GoString) : stdgo.GoString);
        var _tscan:_internal.fmt_test.Fmt_test_twolines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_twolines.TwoLines), _tscan__pointer__ = stdgo.Go.pointer(_tscan);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_input?.__copy__(), new stdgo.AnyInterface(_tscan__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L921"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L922"
            _t.errorf(("Sscan: expected 1 item; got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L924"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L925"
            _t.errorf(("Sscan: expected no error; got %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L927"
        if ((_tscan : stdgo.GoString) != (_input)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L928"
            _t.errorf(("Sscan: expected %q; got %q" : stdgo.GoString), new stdgo.AnyInterface(_input, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_tscan, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines)));
        };
        var _tscanf:_internal.fmt_test.Fmt_test_twolines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_twolines.TwoLines), _tscanf__pointer__ = stdgo.Go.pointer(_tscanf);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_input?.__copy__(), ("%s" : stdgo.GoString), new stdgo.AnyInterface(_tscanf__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L933"
        if (_n != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L934"
            _t.errorf(("Sscanf: expected 1 item; got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L936"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L937"
            _t.errorf(("Sscanf: expected no error; got %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L939"
        if ((_tscanf : stdgo.GoString) != (_input)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L940"
            _t.errorf(("Sscanf: expected %q; got %q" : stdgo.GoString), new stdgo.AnyInterface(_input, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_tscanf, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines)));
        };
        var _tscanln:_internal.fmt_test.Fmt_test_twolines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_twolines.TwoLines), _tscanln__pointer__ = stdgo.Go.pointer(_tscanln);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(_input?.__copy__(), new stdgo.AnyInterface(_tscanln__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L945"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L946"
            _t.errorf(("Sscanln: expected 0 items; got %d: %q" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_tscanln, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_twolinesdottwolines.__type___internaldotfmt_testdotFmt_test_twolinesdotTwoLines)));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L948"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L949"
            _t.error(new stdgo.AnyInterface(("Sscanln: expected error; got none" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != (({
            final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L951"
            _t.errorf(("Sscanln: expected io.ErrUnexpectedEOF (ha!); got %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
