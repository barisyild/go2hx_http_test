package _internal.reflect_test;
function testArrayOfDirectIface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5032"
        {
            {};
            var _i1 = @:assignType (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(1, 1, ...[]) : _internal.reflect_test.Reflect_test_t_testarrayofdirectiface___localname___t_135295.T_testArrayOfDirectIface___localname___T_135295), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testarrayofdirectiface___localname___t_135295dott_testarrayofdirectiface___localname___t_135295.__type___internaldotreflect_testdotReflect_test_t_testarrayofdirectiface___localname___t_135295dotT_testArrayOfDirectIface___localname___T_135295)))).interface_() : stdgo.AnyInterface);
            var _v1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_i1), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _p1 = @:assignType (_v1.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _i2 = @:assignType (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_arrayof.arrayOf((1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_pointerto.pointerTo(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int8_kind))))))).interface_() : stdgo.AnyInterface);
            var _v2 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_i2), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _p2 = @:assignType (_v2.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5042"
            if (_p1 != ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5043"
                _t.errorf(("got p1=%v. want=%v" : stdgo.GoString), new stdgo.AnyInterface(_p1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), (null : stdgo.AnyInterface));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5046"
            if (_p2 != ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5047"
                _t.errorf(("got p2=%v. want=%v" : stdgo.GoString), new stdgo.AnyInterface(_p2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), (null : stdgo.AnyInterface));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5050"
        {
            {};
            var _i1 = @:assignType (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt8>>(0, 0, ...[]) : _internal.reflect_test.Reflect_test_t_testarrayofdirectiface___localname___t_135665.T_testArrayOfDirectIface___localname___T_135665), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testarrayofdirectiface___localname___t_135665dott_testarrayofdirectiface___localname___t_135665.__type___internaldotreflect_testdotReflect_test_t_testarrayofdirectiface___localname___t_135665dotT_testArrayOfDirectIface___localname___T_135665)))).interface_() : stdgo.AnyInterface);
            var _v1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_i1), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _p1 = @:assignType (_v1.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _i2 = @:assignType (stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_arrayof.arrayOf((0 : stdgo.GoInt), stdgo._internal.reflect.Reflect_pointerto.pointerTo(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int8_kind))))))).interface_() : stdgo.AnyInterface);
            var _v2 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_i2), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _p2 = @:assignType (_v2.interfaceData()[(1 : stdgo.GoInt)] : stdgo.GoUIntptr);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5060"
            if (_p1 == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5061"
                _t.errorf(("got p1=%v. want=not-%v" : stdgo.GoString), new stdgo.AnyInterface(_p1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), (null : stdgo.AnyInterface));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5064"
            if (_p2 == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5065"
                _t.errorf(("got p2=%v. want=not-%v" : stdgo.GoString), new stdgo.AnyInterface(_p2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), (null : stdgo.AnyInterface));
            };
        };
    }
