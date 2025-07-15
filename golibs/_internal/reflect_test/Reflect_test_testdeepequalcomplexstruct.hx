package _internal.reflect_test;
function testDeepEqualComplexStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = (({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoFloat64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoFloat64);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>) : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoFloat64>);
        var __0 = @:assignType (("hello" : stdgo.GoString) : stdgo.GoString), __1 = @:assignType (("hello" : stdgo.GoString) : stdgo.GoString);
var _strb = __1, _stra = __0;
        var _strb__pointer__ = stdgo.Go.pointer(_strb);
        var _stra__pointer__ = stdgo.Go.pointer(_stra);
        var __0 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_t__complex.T__Complex), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>), __1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_t__complex.T__Complex), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>);
var _b = __1, _a = __0;
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_t__complex.T__Complex((5 : stdgo.GoInt), (new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>(3, 3, ...[_a, _b, _a]) : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>), _stra__pointer__, _m) : _internal.reflect_test.Reflect_test_t__complex.T__Complex);
            var x = (_a : _internal.reflect_test.Reflect_test_t__complex.T__Complex);
            x._a = __tmp__?._a;
            x._b = __tmp__?._b;
            x._c = __tmp__?._c;
            x._d = __tmp__?._d;
        };
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_t__complex.T__Complex((5 : stdgo.GoInt), (new stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>(3, 3, ...[_b, _a, _a]) : stdgo.GoArray<stdgo.Ref<_internal.reflect_test.Reflect_test_t__complex.T__Complex>>), _strb__pointer__, _m) : _internal.reflect_test.Reflect_test_t__complex.T__Complex);
            var x = (_b : _internal.reflect_test.Reflect_test_t__complex.T__Complex);
            x._a = __tmp__?._a;
            x._b = __tmp__?._b;
            x._c = __tmp__?._c;
            x._d = __tmp__?._d;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1191"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_a, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1192"
            _t.error(new stdgo.AnyInterface(("DeepEqual(complex same) = false, want true" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
