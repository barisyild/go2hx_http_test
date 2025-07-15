package _internal.reflect_test;
function testChanAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer((0 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7287"
            _c.send(_v?.__copy__());
            _c.recv();
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7290"
        if (((_allocs < (0.5 : stdgo.GoFloat64) : Bool) || (_allocs > (1.5 : stdgo.GoFloat64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7291"
            _t.errorf(("allocs per chan send/recv: want 1 got %f" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
