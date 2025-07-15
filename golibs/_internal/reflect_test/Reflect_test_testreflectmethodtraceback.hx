package _internal.reflect_test;
function testReflectMethodTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = @:assignType (new _internal.reflect_test.Reflect_test_point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point);
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("GCMethod" : stdgo.GoString))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _i = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_m.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((5 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6501"
        if (_i != ((8i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6502"
            _t.errorf(("Call returned %d; want 8" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
    }
