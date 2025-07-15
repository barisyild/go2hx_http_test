package _internal.fmt_test;
function _testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.GoString -> stdgo._internal.io.Io_reader.Reader):Void {
        var _sliceType = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L644"
        if (_internal.fmt_test.Fmt_test__multitests._multiTests != null) for (__2 => _test in _internal.fmt_test.Fmt_test__multitests._multiTests) {
            var _r = @:assignType (_f(_test._text?.__copy__()) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_r, _test._format?.__copy__(), ...(_test._in : Array<stdgo.AnyInterface>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L647"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L648"
                if (_test._err == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L649"
                    _t.errorf(("got error scanning (%q, %q): %q" : stdgo.GoString), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L651"
                    _t.errorf(("got wrong error scanning (%q, %q): %q; expected %q" : stdgo.GoString), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_test._err, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L653"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L655"
            if (_test._err != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L656"
                _t.errorf(("expected error %q error scanning (%q, %q)" : stdgo.GoString), new stdgo.AnyInterface(_test._err, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L658"
            if (_n != ((_test._out.length))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L659"
                _t.errorf(("count error on entry (%q, %q): expected %d got %d" : stdgo.GoString), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_test._out.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L660"
                continue;
            };
            var _resultVal = @:assignType (stdgo._internal.reflect.Reflect_makeslice.makeSlice(_sliceType, _n, _n)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L664"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._in[(_i : stdgo.GoInt)]).elem().__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L666"
                    _resultVal.index(_i).set(_v.__copy__());
                    _i++;
                };
            };
            var _result = @:assignType (_resultVal.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L669"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_result, new stdgo.AnyInterface(_test._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L670"
                _t.errorf(("scanning (%q, %q): expected %#v got %#v" : stdgo.GoString), new stdgo.AnyInterface(_test._format, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))), _result);
            };
        };
    }
