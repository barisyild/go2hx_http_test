package _internal.reflect_test;
function testSetLenCap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _vs = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3611"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3611"
            _vs.setLen((10 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3612"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3612"
            _vs.setCap((10 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3613"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3613"
            _vs.setLen((-1 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3614"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3614"
            _vs.setCap((-1 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3615"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3615"
            _vs.setCap((6 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3616"
        _vs.setLen((5 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3617"
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (8 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3618"
            _t.errorf(("after SetLen(5), len, cap = %d, %d, want 5, 8" : stdgo.GoString), new stdgo.AnyInterface((_xs.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_xs.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3620"
        _vs.setCap((6 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3621"
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (6 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3622"
            _t.errorf(("after SetCap(6), len, cap = %d, %d, want 5, 6" : stdgo.GoString), new stdgo.AnyInterface((_xs.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_xs.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3624"
        _vs.setCap((5 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3625"
        if (((_xs.length != (5 : stdgo.GoInt)) || (_xs.capacity != (5 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3626"
            _t.errorf(("after SetCap(5), len, cap = %d, %d, want 5, 5" : stdgo.GoString), new stdgo.AnyInterface((_xs.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_xs.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3628"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3628"
            _vs.setCap((4 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3629"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3629"
            _vs.setLen((6 : stdgo.GoInt));
        });
        var _va = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3632"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetLen" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3632"
            _va.setLen((8 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3633"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("SetCap" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3633"
            _va.setCap((8 : stdgo.GoInt));
        });
    }
