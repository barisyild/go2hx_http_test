package _internal.reflect_test;
function testNestedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_t_outer.T_outer>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_outerdott_outer.__type___internaldotreflect_testdotReflect_test_t_outerdotT_outer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_outerdott_outer.__type___internaldotreflect_testdotReflect_test_t_outerdotT_outer })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3266"
        if (((_typ.numMethod() != (1 : stdgo.GoInt)) || (_typ.method((0 : stdgo.GoInt)).func.unsafePointer() != stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(@:selector_x_ident2 _internal.reflect_test.Reflect_test_t_outer_static_extension.T_outer_static_extension.m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_outerdott_outer.__type___internaldotreflect_testdotReflect_test_t_outerdotT_outer })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).unsafePointer()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3267"
            _t.errorf(("Wrong method table for outer: (M=%p)" : stdgo.GoString), new stdgo.AnyInterface(@:selector_x_ident2 _internal.reflect_test.Reflect_test_t_outer_static_extension.T_outer_static_extension.m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_outerdott_outer.__type___internaldotreflect_testdotReflect_test_t_outerdotT_outer })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3268"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _typ.numMethod() : Bool)) {
                    var _m = @:assignType (_typ.method(_i).__copy__() : stdgo._internal.reflect.Reflect_method.Method);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3270"
                    _t.errorf(("\t%d: %s %p\n" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_m.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m.func.unsafePointer(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))));
                    _i++;
                };
            };
        };
    }
