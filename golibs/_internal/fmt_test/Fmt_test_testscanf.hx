package _internal.fmt_test;
function testScanf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L549"
        if (_internal.fmt_test.Fmt_test__scanftests._scanfTests != null) for (__2 => _test in _internal.fmt_test.Fmt_test__scanftests._scanfTests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_test._text?.__copy__(), _test._format?.__copy__(), _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L551"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L552"
                if (({
                    final value = _test._out;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L553"
                    _t.errorf(("Sscanf(%q, %q): unexpected error: %v" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L555"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L557"
            if (({
                final value = _test._out;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L558"
                _t.errorf(("Sscanf(%q, %q): unexpected success" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L559"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L561"
            if (_n != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L562"
                _t.errorf(("Sscanf(%q, %q): parsed %d field, want 1" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L563"
                continue;
            };
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._in)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L567"
            {
                var _p = @:assignType (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v = _p.elem()?.__copy__();
                };
            };
            var _val = @:assignType (_v.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L571"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_val, _test._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L572"
                _t.errorf(("Sscanf(%q, %q): parsed value %T(%#v), want %T(%#v)" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _val, _val, _test._out, _test._out);
            };
        };
    }
