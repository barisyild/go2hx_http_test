package _internal.reflect_test;
function testValueString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_impl.Impl() : _internal.reflect_test.Reflect_test_impl.Impl), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_impldotimpl.__type___internaldotreflect_testdotReflect_test_impldotImpl), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_impldotimpl.__type___internaldotreflect_testdotReflect_test_impldotImpl)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6704"
        if ((_rv.string() : stdgo.GoString) != (("<reflect_test.Impl Value>" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6705"
            _t.errorf(("ValueOf(Impl{}).String() = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface((_rv.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("<reflect_test.Impl Value>" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _method = @:assignType (_rv.method((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6709"
        if ((_method.string() : stdgo.GoString) != (("<func() Value>" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6710"
            _t.errorf(("ValueOf(Impl{}).Method(0).String() = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface((_method.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("<func() Value>" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
