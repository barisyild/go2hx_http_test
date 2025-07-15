package _internal.fmt_test;
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1453"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1455"
            _t.skip(new stdgo.AnyInterface(("skipping malloc count in short mode" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if ((stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt)) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1457"
            _t.skip(new stdgo.AnyInterface(("skipping; GOMAXPROCS>1" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if (false) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1459"
            _t.skip(new stdgo.AnyInterface(("skipping malloc count under race detector" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1461"
        if (_internal.fmt_test.Fmt_test__malloctest._mallocTest != null) for (__2 => _mt in _internal.fmt_test.Fmt_test__malloctest._mallocTest) {
            var _mallocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), _mt._fn) : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1463"
            {
                var __0 = @:assignType (_mallocs : stdgo.GoFloat64), __1 = @:assignType (_mt._count : stdgo.GoFloat64);
var _max = __1, _got = __0;
                if ((_got > _max : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1464"
                    _t.errorf(("%s: got %v allocs, want <=%v" : stdgo.GoString), new stdgo.AnyInterface(_mt._desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface(_max, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
                };
            };
        };
    }
