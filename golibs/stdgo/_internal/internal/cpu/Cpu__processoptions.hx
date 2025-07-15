package stdgo._internal.internal.cpu;
function _processOptions(_env:stdgo.GoString):Void {
        var _iterator_372011_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _value_3:stdgo.GoString = ("" : stdgo.GoString);
        var _key_2:stdgo.GoString = ("" : stdgo.GoString);
        var _field_0:stdgo.GoString = ("" : stdgo.GoString);
        var _fieldBreak = false;
        var _o_8:stdgo._internal.internal.cpu.Cpu_t_option.T_option = ({} : stdgo._internal.internal.cpu.Cpu_t_option.T_option);
        var _i_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _enable_4:Bool = false;
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 371036i64;
                } else if (__value__ == (371036i64)) {
                    0i64;
                    _fieldBreak = false;
                    _gotoNext = 371044i64;
                } else if (__value__ == (371044i64)) {
                    //"file://#L0"
                    if (!_fieldBreak && (_env != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 371058i64;
                    } else {
                        _gotoNext = 371999i64;
                    };
                } else if (__value__ == (371058i64)) {
                    _field_0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L154"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 371112i64;
                    } else {
                        _gotoNext = 371147i64;
                    };
                } else if (__value__ == (371112i64)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 371190i64;
                } else if (__value__ == (371147i64)) {
                    _gotoNext = 371147i64;
                    {
                        final __tmp__0 = (_env.__slice__(0, _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field_0 = @:binopAssign __tmp__0;
                        _env = @:binopAssign __tmp__1;
                    };
                    0i64;
                    _gotoNext = 371190i64;
                } else if (__value__ == (371190i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L159"
                    if ((((_field_0.length) < (4 : stdgo.GoInt) : Bool) || ((_field_0.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 371231i64;
                    } else {
                        _gotoNext = 371251i64;
                    };
                } else if (__value__ == (371231i64)) {
                    0i64;
                    _gotoNext = 371044i64;
                } else if (__value__ == (371251i64)) {
                    _i_1 = stdgo._internal.internal.cpu.Cpu__indexbyte._indexByte(_field_0?.__copy__(), (61 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L163"
                    if ((_i_1 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 371288i64;
                    } else {
                        _gotoNext = 371370i64;
                    };
                } else if (__value__ == (371288i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L164"
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field_0, ("\"\n" : stdgo.GoString));
                    0i64;
                    _gotoNext = 371044i64;
                } else if (__value__ == (371370i64)) {
                    {
                        final __tmp__0 = (_field_0.__slice__((4 : stdgo.GoInt), _i_1) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_field_0.__slice__((_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _key_2 = @:binopAssign __tmp__0;
                        _value_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 371450i64;
                } else if (__value__ == (371450i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L170"
                    {
                        final __value__ = _value_3;
                        if (__value__ == (("on" : stdgo.GoString))) {
                            _gotoNext = 371467i64;
                        } else if (__value__ == (("off" : stdgo.GoString))) {
                            _gotoNext = 371497i64;
                        } else {
                            _gotoNext = 371529i64;
                        };
                    };
                } else if (__value__ == (371467i64)) {
                    _enable_4 = true;
                    _gotoNext = 371651i64;
                } else if (__value__ == (371497i64)) {
                    _enable_4 = false;
                    _gotoNext = 371651i64;
                } else if (__value__ == (371529i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L176"
                    stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value_3, ("\" not supported for cpu option \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 371044i64;
                } else if (__value__ == (371651i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L180"
                    if (_key_2 == (("all" : stdgo.GoString))) {
                        _gotoNext = 371667i64;
                    } else {
                        _gotoNext = 371790i64;
                    };
                } else if (__value__ == (371667i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 371762i64;
                    } else {
                        _gotoNext = 371768i64;
                    };
                } else if (__value__ == (371695i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_5 : stdgo.GoInt)].enable = _enable_4;
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L181"
                    _i_5++;
                    _gotoNext = 371763i64;
                } else if (__value__ == (371762i64)) {
                    _i_5 = 0i64;
                    _gotoNext = 371763i64;
                } else if (__value__ == (371763i64)) {
                    //"file://#L0"
                    if (_i_5 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 371695i64;
                    } else {
                        _gotoNext = 371768i64;
                    };
                } else if (__value__ == (371768i64)) {
                    _gotoNext = 371044i64;
                } else if (__value__ == (371790i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 371934i64;
                    } else {
                        _gotoNext = 371940i64;
                    };
                } else if (__value__ == (371794i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L188"
                    _i_6++;
                    _gotoNext = 371935i64;
                } else if (__value__ == (371813i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L189"
                    if (stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].name == (_key_2)) {
                        _gotoNext = 371844i64;
                    } else {
                        _gotoNext = 371794i64;
                    };
                } else if (__value__ == (371844i64)) {
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].specified = true;
                    stdgo._internal.internal.cpu.Cpu__options._options[(_i_6 : stdgo.GoInt)].enable = _enable_4;
                    _gotoNext = 371044i64;
                } else if (__value__ == (371934i64)) {
                    _i_6 = 0i64;
                    _gotoNext = 371935i64;
                } else if (__value__ == (371935i64)) {
                    //"file://#L0"
                    if (_i_6 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 371813i64;
                    } else {
                        _gotoNext = 371940i64;
                    };
                } else if (__value__ == (371940i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L196"
                    stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key_2, ("\"\n" : stdgo.GoString));
                    _gotoNext = 371044i64;
                } else if (__value__ == (371999i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    if ((0i64 : stdgo.GoInt) < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 372212i64;
                    } else {
                        _gotoNext = 372215i64;
                    };
                } else if (__value__ == (372025i64)) {
                    _o_8 = stdgo._internal.internal.cpu.Cpu__options._options[(_iterator_372011_7 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L200"
                    if (!_o_8.specified) {
                        _gotoNext = 372045i64;
                    } else {
                        _gotoNext = 372066i64;
                    };
                } else if (__value__ == (372045i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_372011_7++;
                    _gotoNext = 372213i64;
                } else if (__value__ == (372066i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L204"
                    if ((_o_8.enable && !_o_8.feature.value : Bool)) {
                        _gotoNext = 372093i64;
                    } else {
                        _gotoNext = 372190i64;
                    };
                } else if (__value__ == (372093i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L205"
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o_8.name, ("\", missing CPU support\n" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_372011_7++;
                    _gotoNext = 372213i64;
                } else if (__value__ == (372190i64)) {
                    _o_8.feature.value = _o_8.enable;
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L199"
                    _iterator_372011_7++;
                    _gotoNext = 372213i64;
                } else if (__value__ == (372212i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = stdgo._internal.internal.cpu.Cpu__options._options[(0i64 : stdgo.GoInt)];
                        _iterator_372011_7 = @:binopAssign __tmp__0;
                        _o_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 372213i64;
                } else if (__value__ == (372213i64)) {
                    //"file://#L0"
                    if (_iterator_372011_7 < (stdgo._internal.internal.cpu.Cpu__options._options.length)) {
                        _gotoNext = 372025i64;
                    } else {
                        _gotoNext = 372215i64;
                    };
                } else if (__value__ == (372215i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
