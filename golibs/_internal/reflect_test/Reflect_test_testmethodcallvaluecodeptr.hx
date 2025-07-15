package _internal.reflect_test;
function testMethodCallValueCodePtr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_point.Point() : _internal.reflect_test.Reflect_test_point.Point), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _want = @:assignType (stdgo._internal.reflect.Reflect_methodvaluecallcodeptr.methodValueCallCodePtr() : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7867"
        {
            var _got = @:assignType ((new stdgo.GoUIntptr(_m.unsafePointer()) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7868"
                _t.errorf(("methodValueCall code pointer mismatched, want: %v, got: %v" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7870"
        {
            var _got = @:assignType (_m.pointer() : stdgo.GoUIntptr);
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7871"
                _t.errorf(("methodValueCall code pointer mismatched, want: %v, got: %v" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
            };
        };
    }
