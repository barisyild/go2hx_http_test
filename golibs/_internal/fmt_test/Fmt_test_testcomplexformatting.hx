package _internal.fmt_test;
function testComplexFormatting(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _yesNo = (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>);
        var _values = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), _internal.fmt_test.Fmt_test__posinf._posInf, _internal.fmt_test.Fmt_test__neginf._negInf, _internal.fmt_test.Fmt_test_nan.naN]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1145"
        if (_yesNo != null) for (__2 => _plus in _yesNo) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1146"
            if (_yesNo != null) for (__3 => _zero in _yesNo) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1147"
                if (_yesNo != null) for (__4 => _space in _yesNo) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1148"
                    if (("fFeEgG" : stdgo.GoString) != null) for (__5 => _char in ("fFeEgG" : stdgo.GoString)) {
                        var _realFmt = @:assignType (("%" : stdgo.GoString) : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1150"
                        if (_zero) {
                            _realFmt = (_realFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1153"
                        if (_space) {
                            _realFmt = (_realFmt + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1156"
                        if (_plus) {
                            _realFmt = (_realFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _realFmt = (_realFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _realFmt = (_realFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        var _imagFmt = @:assignType (("%" : stdgo.GoString) : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1163"
                        if (_zero) {
                            _imagFmt = (_imagFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _imagFmt = (_imagFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1169"
                        if (_values != null) for (__6 => _realValue in _values) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1170"
                            if (_values != null) for (__7 => _imagValue in _values) {
                                var _one = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_realFmt?.__copy__(), new stdgo.AnyInterface(new stdgo.GoComplex128(_realValue, _imagValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(complex128_kind))))?.__copy__() : stdgo.GoString);
                                var _two = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf((((("(" : stdgo.GoString) + _realFmt?.__copy__() : stdgo.GoString) + _imagFmt?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), new stdgo.AnyInterface(_realValue, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface(_imagValue, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))))?.__copy__() : stdgo.GoString);
                                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1173"
                                if (_one != (_two)) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1174"
                                    _t.error(new stdgo.AnyInterface(_internal.fmt_test.Fmt_test__f._f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface(_one, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_two, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                };
                            };
                        };
                    };
                };
            };
        };
    }
