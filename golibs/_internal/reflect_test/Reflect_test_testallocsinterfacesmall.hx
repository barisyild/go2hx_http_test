package _internal.reflect_test;
function testAllocsInterfaceSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6388"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6389"
            _t.skip(new stdgo.AnyInterface(("skipping malloc count in short mode" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((0i64 : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6392"
        {
            var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6392"
                _v.interface_();
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6393"
                _t.error(new stdgo.AnyInterface(("allocs:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
    }
