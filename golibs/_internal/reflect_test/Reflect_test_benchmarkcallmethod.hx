package _internal.reflect_test;
function benchmarkCallMethod(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L207"
        _b.reportAllocs();
        var _z = stdgo.Go.pointer(((0 : stdgo.GoInt64) : _internal.reflect_test.Reflect_test_t_myint.T_myint));
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((_z : _internal.reflect_test.Reflect_test_t_myintpointer.T_myintPointer)._inc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L211"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L212"
                _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
                _i++;
            };
        };
    }
