package _internal.reflect_test;
function testSliceOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _st = @:assignType (stdgo._internal.reflect.Reflect_sliceof.sliceOf(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((1 : _internal.reflect_test.Reflect_test_t_testsliceof___localname___t_136372.T_testSliceOf___localname___T_136372), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsliceof___localname___t_136372dott_testsliceof___localname___t_136372.__type___internaldotreflect_testdotReflect_test_t_testsliceof___localname___t_136372dotT_testSliceOf___localname___T_136372)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5082"
        {
            var __0 = @:assignType ((_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType (("[]reflect_test.T" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5083"
                _t.errorf(("SliceOf(T(1)).String()=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _v = @:assignType (stdgo._internal.reflect.Reflect_makeslice.makeSlice(_st, (10 : stdgo.GoInt), (10 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5086"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5087"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _v.len() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5088"
                _v.index(_i).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((_i : _internal.reflect_test.Reflect_test_t_testsliceof___localname___t_136372.T_testSliceOf___localname___T_136372), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsliceof___localname___t_136372dott_testsliceof___localname___t_136372.__type___internaldotreflect_testdotReflect_test_t_testsliceof___localname___t_136372dotT_testSliceOf___localname___T_136372))).__copy__());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5089"
                stdgo._internal.runtime.Runtime_gc.gC();
                _i++;
            };
        };
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_())?.__copy__() : stdgo.GoString);
        var _want = @:assignType (("[0 1 2 3 4 5 6 7 8 9]" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5093"
        if (_s != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5094"
            _t.errorf(("constructed slice = %s, want %s" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5099"
        _internal.reflect_test.Reflect_test__checksametype._checkSameType(_t, stdgo._internal.reflect.Reflect_sliceof.sliceOf(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((1 : _internal.reflect_test.Reflect_test_t_testsliceof___localname___t1_136851.T_testSliceOf___localname___T1_136851), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsliceof___localname___t1_136851dott_testsliceof___localname___t1_136851.__type___internaldotreflect_testdotReflect_test_t_testsliceof___localname___t1_136851dotT_testSliceOf___localname___T1_136851)))), new stdgo.AnyInterface((new stdgo.Slice<_internal.reflect_test.Reflect_test_t_testsliceof___localname___t1_136851.T_testSliceOf___localname___T1_136851>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<_internal.reflect_test.Reflect_test_t_testsliceof___localname___t1_136851.T_testSliceOf___localname___T1_136851>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsliceof___localname___t1_136851dott_testsliceof___localname___t1_136851.__type___internaldotreflect_testdotReflect_test_t_testsliceof___localname___t1_136851dotT_testSliceOf___localname___T1_136851 }))));
    }
