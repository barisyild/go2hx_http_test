package _internal.reflect_test;
function testIssue22073(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((0 : _internal.reflect_test.Reflect_test_nonexportedfirst.NonExportedFirst), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_nonexportedfirstdotnonexportedfirst.__type___internaldotreflect_testdotReflect_test_nonexportedfirstdotNonExportedFirst), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_nonexportedfirstdotnonexportedfirst.__type___internaldotreflect_testdotReflect_test_nonexportedfirstdotNonExportedFirst))).method((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7563"
        {
            var _got = @:assignType (_m.type().numOut() : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7564"
                _t.errorf(("NumOut: got %v, want 0" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7568"
        _m.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
    }
