package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.TwoLines_asInterface) class TwoLines_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function scan( _t:stdgo.Pointer<_internal.fmt_test.Fmt_test_twolines.TwoLines>, _state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        var _chars = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (100 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L902"
        {
            var _nlCount = @:assignType (0 : stdgo.GoInt);
            while ((_nlCount < (2 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _state.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __2:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L904"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L905"
                    return _err;
                };
                _chars = (_chars.__append__(_c) : stdgo.Slice<stdgo.GoInt32>);
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L908"
                if (_c == ((10 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L909"
                    _nlCount++;
                };
            };
        };
        _t.value = ((_chars : stdgo.GoString) : _internal.fmt_test.Fmt_test_twolines.TwoLines);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L913"
        return (null : stdgo.Error);
    }
}
