package _internal.reflect_test;
function testAllocsInterfaceBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6378"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6379"
            _t.skip(new stdgo.AnyInterface(("skipping malloc count in short mode" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_s.S() : _internal.reflect_test.Reflect_test_s.S), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sdots.__type___internaldotreflect_testdotReflect_test_sdotS), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_sdots.__type___internaldotreflect_testdotReflect_test_sdotS)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6382"
        {
            var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6382"
                _v.interface_();
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6383"
                _t.error(new stdgo.AnyInterface(("allocs:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
    }
