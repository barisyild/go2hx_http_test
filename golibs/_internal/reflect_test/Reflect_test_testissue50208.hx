package _internal.reflect_test;
function testIssue50208(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _want1 = @:assignType (("B[reflect_test.A]" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7880"
        {
            var _got = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_a.A>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB })) : stdgo.Ref<_internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_a.A>>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB })))).elem().name()?.__copy__() : stdgo.GoString);
            if (_got != (_want1)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7881"
                _t.errorf(("name of type parameter mismatched, want:%s, got:%s" : stdgo.GoString), new stdgo.AnyInterface(_want1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _want2 = @:assignType (("B[reflect_test.B[reflect_test.A]]" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7884"
        {
            var _got = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_a.A>>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB })) : stdgo.Ref<_internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_b.B<_internal.reflect_test.Reflect_test_a.A>>>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_bdotb.__type___internaldotreflect_testdotReflect_test_bdotB })))).elem().name()?.__copy__() : stdgo.GoString);
            if (_got != (_want2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7885"
                _t.errorf(("name of type parameter mismatched, want:%s, got:%s" : stdgo.GoString), new stdgo.AnyInterface(_want2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
