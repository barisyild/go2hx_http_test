package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_flagPrinter_asInterface) class T_flagPrinter_static_extension {
    @:keep
    @:tdfield
    static public function format( _:_internal.fmt_test.Fmt_test_t_flagprinter.T_flagPrinter, _f:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt32):Void {
        @:recv var _:_internal.fmt_test.Fmt_test_t_flagprinter.T_flagPrinter = _?.__copy__();
        var _s = @:assignType (("%" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1473"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (128 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1474"
                if (_f.flag(_i)) {
                    _s = (_s + (((_i : stdgo.GoInt32) : stdgo.GoString)).__copy__() : stdgo.GoString);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1478"
        {
            var __tmp__ = _f.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%d" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_w, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))))?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1481"
        {
            var __tmp__ = _f.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((".%d" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + ((_c : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1485"
        stdgo._internal.io.Io_writestring.writeString(_f, ((("[" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
