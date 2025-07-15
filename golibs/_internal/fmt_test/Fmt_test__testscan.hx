package _internal.fmt_test;
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io_reader.Reader, _scan:(stdgo._internal.io.Io_reader.Reader, haxe.Rest<stdgo.AnyInterface>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; }):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L505"
        if (_internal.fmt_test.Fmt_test__scantests._scanTests != null) for (__2 => _test in _internal.fmt_test.Fmt_test__scantests._scanTests) {
            var _r = @:assignType (_f(_test._text?.__copy__()) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = _scan(_r, _test._in), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L508"
            if (_err != null) {
                var _m = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L510"
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _m = stdgo._internal.fmt.Fmt_sprintf.sprintf((" (%d fields ok)" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L513"
                _t.errorf(("got error scanning %q: %s%s" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L514"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L516"
            if (_n != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L517"
                _t.errorf(("count error on entry %q: got %d" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L518"
                continue;
            };
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._in)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L522"
            {
                var _p = @:assignType (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                if (_p.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _v = _p.elem()?.__copy__();
                };
            };
            var _val = @:assignType (_v.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L526"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_val, _test._out)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L527"
                _t.errorf(("scanning %q: expected %#v got %#v, type %T" : stdgo.GoString), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _test._out, _val, _val);
            };
        };
    }
