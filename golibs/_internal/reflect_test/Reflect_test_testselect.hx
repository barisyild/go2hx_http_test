package _internal.reflect_test;
function testSelect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1746"
        _internal.reflect_test.Reflect_test__selectwatch._selectWatch._once.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1746"
            {
                {};
                stdgo.Go.routine(() -> _internal.reflect_test.Reflect_test__selectwatcher._selectWatcher());
            };
        });
        var _x:_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive = ({} : _internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive);
        var _nch = @:assignType (0 : stdgo.GoInt);
        var _newop = @:assignType (function(_n:stdgo.GoInt, _cap:stdgo.GoInt):{ var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo._internal.reflect.Reflect_value.Value; } {
            var _ch = ({} : stdgo._internal.reflect.Reflect_value.Value), _val = ({} : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1751"
            _nch++;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1752"
            if (((_nch % (101 : stdgo.GoInt) : stdgo.GoInt) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                var _c = (new stdgo.Chan<stdgo.GoInt>((_cap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                _ch = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__();
                _val = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
            } else {
                var _c = (new stdgo.Chan<stdgo.GoString>((_cap : stdgo.GoInt).toBasic(), () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                _ch = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__();
                _val = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1761"
            return { _0 : _ch, _1 : _val };
        } : (stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo._internal.reflect.Reflect_value.Value; var _1 : stdgo._internal.reflect.Reflect_value.Value; });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1764"
        {
            var _n = @:assignType (0 : stdgo.GoInt);
            while (_x.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1765"
                if ((stdgo._internal.testing.Testing_short.short() && (_n >= (1000 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1766"
                    break;
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1768"
                if (((_n >= (100000 : stdgo.GoInt) : Bool) && !_internal.reflect_test.Reflect_test__allselect._allselect.value : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1769"
                    break;
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1771"
                if ((((_n % (100000 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && stdgo._internal.testing.Testing_verbose.verbose() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1772"
                    stdgo.Go.println(("TestSelect" : stdgo.GoString), _n);
                };
var _cases:stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
var _info:stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1778"
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (1 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : _ch.__copy__(), send : _val.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("ready send" : stdgo.GoString), _canSelect : true } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1789"
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (1 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1791"
                    _ch.send(_val.__copy__());
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : _ch.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("ready recv" : stdgo.GoString), _canSelect : true, _recv : _val.__copy__() } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1800"
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : _ch.__copy__(), send : _val.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1808"
                    if (_x.maybe()) {
                        var _f = @:assignType (function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1809"
                            _ch.recv();
                        } : () -> Void);
                        _info = (_info.__append__(({ _desc : ("blocking send" : stdgo.GoString), _helper : _f } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    } else {
                        _info = (_info.__append__(({ _desc : ("blocking send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1817"
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : _ch.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1824"
                    if (_x.maybe()) {
                        var _f = @:assignType (function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1825"
                            _ch.send(_val.__copy__());
                        } : () -> Void);
                        _info = (_info.__append__(({ _desc : ("blocking recv" : stdgo.GoString), _recv : _val.__copy__(), _helper : _f } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    } else {
                        _info = (_info.__append__(({ _desc : ("blocking recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1833"
                if (_x.maybe()) {
                    var _val:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1836"
                    if (_x.maybe()) {
                        _val = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((100 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__();
                    };
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), send : _val.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("zero Chan send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1847"
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir) } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("zero Chan recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1855"
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.Chan<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__(), send : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((101 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("nil Chan send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1865"
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.Chan<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("nil Chan recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1874"
                if (_x.maybe()) {
                    var _ch = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1876"
                    if (_ch != null) _ch.__close__();
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__(), send : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((101 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("closed Chan send" : stdgo.GoString), _canSelect : true, _panic : true } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1886"
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1888"
                    _ch.close();
                    _val = stdgo._internal.reflect.Reflect_zero.zero(_val.type()).__copy__();
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : _ch.__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("closed Chan recv" : stdgo.GoString), _canSelect : true, _closed : true, _recv : _val.__copy__() } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                };
var _helper:() -> Void = null;
var _numCanSelect = @:assignType (0 : stdgo.GoInt);
var _canProceed = @:assignType (false : Bool);
var _canBlock = @:assignType (true : Bool);
var _canPanic = @:assignType (false : Bool);
var _helpers = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1907"
                if (_info != null) for (_i => _c in _info) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1908"
                    if (_c._canSelect) {
                        _canProceed = true;
                        _canBlock = false;
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1911"
                        _numCanSelect++;
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1912"
                        if (_c._panic) {
                            _canPanic = true;
                        };
                    } else if (_c._helper != null) {
                        _canProceed = true;
                        _helpers = (_helpers.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1920"
                if ((!_canProceed || _x.maybe() : Bool)) {
                    _cases = (_cases.__append__(({ dir : (3 : stdgo._internal.reflect.Reflect_selectdir.SelectDir) } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                    _info = (_info.__append__(({ _desc : ("default" : stdgo.GoString), _canSelect : _canBlock } : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1925"
                    _numCanSelect++;
                } else if (_canBlock) {
                    var _cas = (stdgo.Go.setRef(_info[(_helpers[(_x.choose((_helpers.length)) : stdgo.GoInt)] : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_caseinfodott_caseinfo.__type___internaldotreflect_testdotReflect_test_t_caseinfodotT_caseInfo })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo>);
                    _helper = (@:checkr _cas ?? throw stdgo.Error._nullPointerDereference.__underlying__())._helper;
                    (@:checkr _cas ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canSelect = true;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1931"
                    _numCanSelect++;
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1937"
                {
                    var _loop = @:assignType (0 : stdgo.GoInt);
                    while ((_loop < (2 : stdgo.GoInt) : Bool)) {
                        var _i = @:assignType (_x.choose((_cases.length)) : stdgo.GoInt);
var _j = @:assignType (_x.choose((_cases.length)) : stdgo.GoInt);
{
                            final __tmp__0 = _cases[(_j : stdgo.GoInt)];
                            final __tmp__1 = _cases[(_i : stdgo.GoInt)];
                            final __tmp__2 = _cases;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _cases;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
{
                            final __tmp__0 = _info[(_j : stdgo.GoInt)];
                            final __tmp__1 = _info[(_i : stdgo.GoInt)];
                            final __tmp__2 = _info;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _info;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                        _loop++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1944"
                if (_helper != null) {
                    var _pause = @:assignType (10000i64 : stdgo._internal.time.Time_duration.Duration);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1951"
                    if (stdgo._internal.testing.Testing_short.short()) {
                        _pause = (100000i64 : stdgo._internal.time.Time_duration.Duration);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1954"
                    stdgo._internal.time.Time_afterfunc.afterFunc(_pause, _helper);
                };
var __tmp__ = _internal.reflect_test.Reflect_test__runselect._runSelect(_cases, _info), _i:stdgo.GoInt = __tmp__._0, _recv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1, _recvOK:Bool = __tmp__._2, _panicErr:stdgo.AnyInterface = __tmp__._3;
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1959"
                if ((({
                    final value = _panicErr;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && !_canPanic : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1960"
                    _t.fatalf(("%s\npanicked unexpectedly: %v" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _panicErr);
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1962"
                if (((({
                    final value = _panicErr;
                    (value == null || (value : Dynamic).__nil__);
                }) && _canPanic : Bool) && (_numCanSelect == (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1963"
                    _t.fatalf(("%s\nselected #%d incorrectly (should panic)" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1965"
                if (({
                    final value = _panicErr;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1966"
                    {
                        _n++;
                        continue;
                    };
                };
var _cas = @:assignType (_info[(_i : stdgo.GoInt)] : _internal.reflect_test.Reflect_test_t_caseinfo.T_caseInfo);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1970"
                if (!_cas._canSelect) {
                    var _recvStr = @:assignType ((stdgo.Go.str() : stdgo.GoString).__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1972"
                    if (_recv.isValid()) {
                        _recvStr = stdgo._internal.fmt.Fmt_sprintf.sprintf((", received %v, %v" : stdgo.GoString), _recv.interface_(), new stdgo.AnyInterface(_recvOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1975"
                    _t.fatalf(("%s\nselected #%d incorrectly%s" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_recvStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1977"
                if (_cas._panic) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1978"
                    _t.fatalf(("%s\nselected #%d incorrectly (case should panic)" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1981"
                if (_cases[(_i : stdgo.GoInt)].dir == ((2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1982"
                    if (!_recv.isValid()) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1983"
                        _t.fatalf(("%s\nselected #%d but got %v, %v, want %v, %v" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_recv, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(_recvOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), _cas._recv.interface_(), new stdgo.AnyInterface(!_cas._closed, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1985"
                    if (!_cas._recv.isValid()) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1986"
                        _t.fatalf(("%s\nselected #%d but internal error: missing recv value" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1988"
                    if (((_recv.interface_() != _cas._recv.interface_()) || (_recvOK != !_cas._closed) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1989"
                        if (((_recv.interface_() == _cas._recv.interface_()) && (_recvOK == !_cas._closed) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1990"
                            _t.fatalf(("%s\nselected #%d, got %#v, %v, and DeepEqual is broken on %T" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _recv.interface_(), new stdgo.AnyInterface(_recvOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), _recv.interface_());
                        };
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1992"
                        _t.fatalf(("%s\nselected #%d but got %#v, %v, want %#v, %v" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _recv.interface_(), new stdgo.AnyInterface(_recvOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), _cas._recv.interface_(), new stdgo.AnyInterface(!_cas._closed, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1995"
                    if ((_recv.isValid() || _recvOK : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1996"
                        _t.fatalf(("%s\nselected #%d but got %v, %v, want %v, %v" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_recv, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(_recvOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
                _n++;
            };
        };
    }
