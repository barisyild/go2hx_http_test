package _internal.reflect_test;
function testInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_testinvalid___localname___t_175325.T_testInvalid___localname___T_175325() : _internal.reflect_test.Reflect_test_t_testinvalid___localname___t_175325.T_testInvalid___localname___T_175325), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testinvalid___localname___t_175325dott_testinvalid___localname___t_175325.__type___internaldotreflect_testdotReflect_test_t_testinvalid___localname___t_175325dotT_testInvalid___localname___T_175325), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testinvalid___localname___t_175325dott_testinvalid___localname___t_175325.__type___internaldotreflect_testdotReflect_test_t_testinvalid___localname___t_175325dotT_testInvalid___localname___T_175325))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6719"
        if (((_v.isValid() != true) || (_v.kind() != (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6720"
            _t.errorf(("field: IsValid=%v, Kind=%v, want true, Interface" : stdgo.GoString), new stdgo.AnyInterface(_v.isValid(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_v.kind(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind)));
        };
        _v = _v.elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6723"
        if (((_v.isValid() != false) || (_v.kind() != (0u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6724"
            _t.errorf(("field elem: IsValid=%v, Kind=%v, want false, Invalid" : stdgo.GoString), new stdgo.AnyInterface(_v.isValid(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_v.kind(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind)));
        };
    }
