package _internal.reflect_test;
function testNumMethodOnDDD(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _rv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((null : _internal.reflect_test.Reflect_test_funcddd.FuncDDD), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_funcddddotfuncddd.__type___internaldotreflect_testdotReflect_test_funcddddotFuncDDD), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_funcddddotfuncddd.__type___internaldotreflect_testdotReflect_test_funcddddotFuncDDD)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3341"
        {
            var _n = @:assignType (_rv.numMethod() : stdgo.GoInt);
            if (_n != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3342"
                _t.fatalf(("NumMethod()=%d, want 1" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
