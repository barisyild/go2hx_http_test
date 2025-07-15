package _internal.reflect_test;
function _noAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _n:stdgo.GoInt, _f:stdgo.GoInt -> Void):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3455"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3456"
            _t.skip(new stdgo.AnyInterface(("skipping malloc count in short mode" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3458"
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3459"
            _t.skip(new stdgo.AnyInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _i = @:assignType (-1 : stdgo.GoInt);
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun(_n, function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3463"
            _f(_i);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3464"
            _i++;
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3466"
        if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3467"
            _t.errorf(("%d iterations: got %v mallocs, want 0" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
