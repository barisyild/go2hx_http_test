package _internal.reflect_test;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.reflect_test.Reflect_test__typetests._typeTests, __tmp__1 = _internal.reflect_test.Reflect_test__valuetests._valueTests, __tmp__2 = _internal.reflect_test.Reflect_test___i.__i, __tmp__3 = _internal.reflect_test.Reflect_test__valuetostringtests._valueToStringTests, __tmp__4 = _internal.reflect_test.Reflect_test__appendtests._appendTests, __tmp__5 = _internal.reflect_test.Reflect_test__fn3._fn3, __tmp__6 = _internal.reflect_test.Reflect_test__deepequaltests._deepEqualTests, __tmp__7 = _internal.reflect_test.Reflect_test__deepequalperftests._deepEqualPerfTests, __tmp__8 = _internal.reflect_test.Reflect_test__allselect._allselect, __tmp__9 = _internal.reflect_test.Reflect_test__fieldtests._fieldTests, __tmp__10 = _internal.reflect_test.Reflect_test__taggettests._tagGetTests, __tmp__11 = _internal.reflect_test.Reflect_test_v.v, __tmp__12 = _internal.reflect_test.Reflect_test__converttests._convertTests, __tmp__13 = _internal.reflect_test.Reflect_test__comparabletests._comparableTests, __tmp__14 = _internal.reflect_test.Reflect_test__nametests._nameTests, __tmp__15 = _internal.reflect_test.Reflect_test__equali._equalI, __tmp__16 = _internal.reflect_test.Reflect_test__equalslice._equalSlice, __tmp__17 = _internal.reflect_test.Reflect_test__mapinterface._mapInterface, __tmp__18 = _internal.reflect_test.Reflect_test__valueequaltests._valueEqualTests, __tmp__19 = _internal.reflect_test.Reflect_test__sourceall._sourceAll, __tmp__20 = _internal.reflect_test.Reflect_test__implementstests._implementsTests, __tmp__21 = _internal.reflect_test.Reflect_test__assignabletests._assignableTests, __tmp__22 = _internal.reflect_test.Reflect_test__fieldstests._fieldsTests, __tmp__23 = _internal.reflect_test.Reflect_test___0.__0;
            _internal.reflect_test.Reflect_test__loop1._loop1 = stdgo.Go.pointer(_internal.reflect_test.Reflect_test__loop2._loop2);
            _internal.reflect_test.Reflect_test__loop2._loop2 = stdgo.Go.pointer(_internal.reflect_test.Reflect_test__loop1._loop1);
            _internal.reflect_test.Reflect_test__loopy1._loopy1 = new stdgo.AnyInterface(stdgo.Go.pointer(_internal.reflect_test.Reflect_test__loopy2._loopy2), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_loopydotloopy.__type___internaldotreflect_testdotReflect_test_loopydotLoopy })));
            _internal.reflect_test.Reflect_test__loopy2._loopy2 = new stdgo.AnyInterface(stdgo.Go.pointer(_internal.reflect_test.Reflect_test__loopy1._loopy1), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_loopydotloopy.__type___internaldotreflect_testdotReflect_test_loopydotLoopy })));
            _internal.reflect_test.Reflect_test__cyclemap1._cycleMap1 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cyclemap1._cycleMap1[("cycle" : stdgo.GoString)] = new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__cyclemap1._cycleMap1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })));
            _internal.reflect_test.Reflect_test__cyclemap2._cycleMap2 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cyclemap2._cycleMap2[("cycle" : stdgo.GoString)] = new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__cyclemap2._cycleMap2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })));
            _internal.reflect_test.Reflect_test__cyclemap3._cycleMap3 = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
            _internal.reflect_test.Reflect_test__cyclemap3._cycleMap3[("different" : stdgo.GoString)] = new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__cyclemap3._cycleMap3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
