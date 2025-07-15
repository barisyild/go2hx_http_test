package _internal.reflect_test;
function testUnexportedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_t_unexp.T_unexp), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_unexpdott_unexp.__type___internaldotreflect_testdotReflect_test_t_unexpdotT_unexp })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_unexp.T_unexp>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_unexpdott_unexp.__type___internaldotreflect_testdotReflect_test_t_unexpdotT_unexp), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_unexpdott_unexp.__type___internaldotreflect_testdotReflect_test_t_unexpdotT_unexp })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3286"
        {
            var _got = @:assignType (_typ.numMethod() : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3287"
                _t.errorf(("NumMethod=%d, want 0 satisfied methods" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_t_unexpi.T_unexpI>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_unexpidott_unexpi.__type___internaldotreflect_testdotReflect_test_t_unexpidotT_unexpI }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3291"
        {
            var _got = @:assignType (_typ.elem().numMethod() : stdgo.GoInt);
            if (_got != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3292"
                _t.errorf(("NumMethod=%d, want 1 satisfied methods" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
