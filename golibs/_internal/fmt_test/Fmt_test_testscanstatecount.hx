package _internal.fmt_test;
function testScanStateCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner), _b:_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner), _c:_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner = ({} : _internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("12➂" : stdgo.GoString), ("%c%c%c" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner }))), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner }))), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner })) : stdgo.Ref<_internal.fmt_test.Fmt_test_t_runescanner.T_runeScanner>), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_t_runescannerdott_runescanner.__type___internaldotfmt_testdotFmt_test_t_runescannerdotT_runeScanner })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L991"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L992"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L994"
        if (_n != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L995"
            _t.fatalf(("expected 3 items consumed, got %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L997"
        if (((_a._rune != ((49 : stdgo.GoInt32)) || _b._rune != ((50 : stdgo.GoInt32)) : Bool) || (_c._rune != (10114 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L998"
            _t.errorf(("bad scan rune: %q %q %q should be \'1\' \'2\' \'➂\'" : stdgo.GoString), new stdgo.AnyInterface(_a._rune, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_b._rune, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_c._rune, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1000"
        if (((_a._size != ((1 : stdgo.GoInt)) || _b._size != ((1 : stdgo.GoInt)) : Bool) || (_c._size != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1001"
            _t.errorf(("bad scan size: %q %q %q should be 1 1 3" : stdgo.GoString), new stdgo.AnyInterface(_a._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c._size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
