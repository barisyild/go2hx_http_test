package _internal.reflect_test;
function testSmallZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[]).__setNumber32__() : _internal.reflect_test.Reflect_test_t_testsmallzero___localname___t_169139.T_testSmallZero___localname___T_169139), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsmallzero___localname___t_169139dott_testsmallzero___localname___t_169139.__type___internaldotreflect_testdotReflect_test_t_testsmallzero___localname___t_169139dotT_testSmallZero___localname___T_169139))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6509"
        {
            var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6509"
                stdgo._internal.reflect.Reflect_zero.zero(_typ);
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6510"
                _t.errorf(("Creating small zero values caused %f allocs, want 0" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
    }
