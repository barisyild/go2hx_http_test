package _internal.fmt_test;
function testScanOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("overflow|too large|out of range|not representable" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L580"
        if (_internal.fmt_test.Fmt_test__overflowtests._overflowTests != null) for (__2 => _test in _internal.fmt_test.Fmt_test__overflowtests._overflowTests) {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_test._text?.__copy__(), _test._in), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L582"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L583"
                _t.errorf(("expected overflow scanning %q" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L584"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L586"
            if (!_re.matchString(_err.error()?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L587"
                _t.errorf(("expected overflow error scanning %q: %s" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
