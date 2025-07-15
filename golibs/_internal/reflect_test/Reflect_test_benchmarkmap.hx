package _internal.reflect_test;
function benchmarkMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        {};
        var _value = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___v_6812dott_benchmarkmap___localname___v_6812.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___v_6812dotT_benchmarkMap___localname___V_6812)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _stringKeys = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _mapOfStrings = ({
            final x = new stdgo.GoMap.GoStringMap<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>);
        var _uint64Keys = (new stdgo.Slice<stdgo.GoUInt64>(0, 0, ...[]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _mapOfUint64s = ({
            final x = new stdgo.GoMap.GoUInt64Map<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>);
        var _userStringKeys = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___s_6825.T_benchmarkMap___localname___S_6825>(0, 0, ...[]).__setString__() : stdgo.Slice<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___s_6825.T_benchmarkMap___localname___S_6825>);
        var _mapOfUserStrings = ({
            final x = new stdgo.GoMap.GoStringMap<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>();
            x.__defaultValue__ = () -> (null : _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812);
            {};
            x;
        } : stdgo.GoMap<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___s_6825.T_benchmarkMap___localname___S_6825, _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___v_6812.T_benchmarkMap___localname___V_6812>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L345"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var _stringKey = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("key%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__() : stdgo.GoString);
_stringKeys = (_stringKeys.__append__(_stringKey.__copy__()) : stdgo.Slice<stdgo.GoString>);
_mapOfStrings[_stringKey] = null;
var _uint64Key = @:assignType (_i : stdgo.GoUInt64);
_uint64Keys = (_uint64Keys.__append__(_uint64Key) : stdgo.Slice<stdgo.GoUInt64>);
_mapOfUint64s[_uint64Key] = null;
var _userStringKey = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("key%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) : _internal.reflect_test.Reflect_test_t_benchmarkmap___localname___s_6825.T_benchmarkMap___localname___S_6825);
_userStringKeys = (_userStringKeys.__append__(_userStringKey) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_benchmarkmap___localname___s_6825.T_benchmarkMap___localname___S_6825>);
_mapOfUserStrings[_userStringKey] = null;
                _i++;
            };
        };
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_136.T__struct_136>(3, 3, ...[({ _label : ("StringKeys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_mapOfStrings, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___v_6812dott_benchmarkmap___localname___v_6812.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___v_6812dotT_benchmarkMap___localname___V_6812 }))))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_stringKeys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_t__struct_136.T__struct_136), ({ _label : ("Uint64Keys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_mapOfUint64s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___v_6812dott_benchmarkmap___localname___v_6812.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___v_6812dotT_benchmarkMap___localname___V_6812 }))))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_uint64Keys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_t__struct_136.T__struct_136), ({ _label : ("UserStringKeys" : stdgo.GoString), _m : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_mapOfUserStrings, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___s_6825dott_benchmarkmap___localname___s_6825.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___s_6825dotT_benchmarkMap___localname___S_6825 }, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___v_6812dott_benchmarkmap___localname___v_6812.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___v_6812dotT_benchmarkMap___localname___V_6812 }))))?.__copy__(), _keys : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_userStringKeys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkmap___localname___s_6825dott_benchmarkmap___localname___s_6825.__type___internaldotreflect_testdotReflect_test_t_benchmarkmap___localname___s_6825dotT_benchmarkMap___localname___S_6825 }))))?.__copy__(), _value : _value?.__copy__() } : _internal.reflect_test.Reflect_test_t__struct_136.T__struct_136)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _label : ("" : stdgo.GoString), _m : ({} : stdgo._internal.reflect.Reflect_value.Value), _keys : ({} : stdgo._internal.reflect.Reflect_value.Value), _value : ({} : stdgo._internal.reflect.Reflect_value.Value) } : _internal.reflect_test.Reflect_test_t__struct_136.T__struct_136)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_136.T__struct_136>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L368"
        if (_tests != null) for (__1 => _tt in _tests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L369"
            _b.run(_tt._label?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L370"
                _b.run(("MapIndex" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L371"
                    _b.reportAllocs();
                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L372"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L373"
                            {
                                var _j = @:assignType (_tt._keys.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
                                while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L374"
                                    _tt._m.mapIndex(_tt._keys.index(_j).__copy__());
                                    _j--;
                                };
                            };
                            _i++;
                        };
                    };
                });
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L378"
                _b.run(("SetMapIndex" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L379"
                    _b.reportAllocs();
                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L380"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L381"
                            {
                                var _j = @:assignType (_tt._keys.len() - (1 : stdgo.GoInt) : stdgo.GoInt);
                                while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L382"
                                    _tt._m.setMapIndex(_tt._keys.index(_j).__copy__(), _tt._value.__copy__());
                                    _j--;
                                };
                            };
                            _i++;
                        };
                    };
                });
            });
        };
    }
