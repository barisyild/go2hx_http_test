package _internal.reflect_test;
function testSlice3(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_xs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).slice3((3 : stdgo.GoInt), (5 : stdgo.GoInt), (7 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3562"
        if ((_v.length) != ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3563"
            _t.errorf(("len(xs.Slice3(3, 5, 7)) = %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3565"
        if (_v.capacity != ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3566"
            _t.errorf(("cap(xs.Slice3(3, 5, 7)) = %d" : stdgo.GoString), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3568"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface((_xs.__slice__((3 : stdgo.GoInt), (7 : stdgo.GoInt), (7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3569"
            _t.errorf(("xs.Slice3(3, 5, 7)[0:4] = %v" : stdgo.GoString), new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
        var _rv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3572"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3572"
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3573"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3573"
            _rv.slice3((1 : stdgo.GoInt), (1 : stdgo.GoInt), (11 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3574"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3574"
            _rv.slice3((2 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })))).elem().slice3((2 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3578"
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3579"
            _t.errorf(("len(xa.Slice(2, 5, 6)) = %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3581"
        if (_v.capacity != ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3582"
            _t.errorf(("cap(xa.Slice(2, 5, 6)) = %d" : stdgo.GoString), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3584"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface((_xa.__slice__((2 : stdgo.GoInt), (6 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3585"
            _t.errorf(("xs.Slice(2, 5, 6)[0:4] = %v" : stdgo.GoString), new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
        _rv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })))).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3588"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3588"
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3589"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3589"
            _rv.slice3((1 : stdgo.GoInt), (1 : stdgo.GoInt), (11 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3590"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3590"
            _rv.slice3((2 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        });
        var _s = @:assignType (("hello world" : stdgo.GoString) : stdgo.GoString);
        var _s__pointer__ = stdgo.Go.pointer(_s);
        _rv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3594"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Slice3" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3594"
            _rv.slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        });
        _rv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__();
        _rv = _rv.slice3((3 : stdgo.GoInt), (5 : stdgo.GoInt), (7 : stdgo.GoInt))?.__copy__();
        var _ptr2 = @:assignType (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        _rv = _rv.slice3((4 : stdgo.GoInt), (4 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__();
        var _ptr3 = @:assignType (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3601"
        if (_ptr3 != (_ptr2)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3602"
            _t.errorf(("xs.Slice3(3,5,7).Slice3(4,4,4).UnsafePointer() = %p, want %p" : stdgo.GoString), new stdgo.AnyInterface(_ptr3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))), new stdgo.AnyInterface(_ptr2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))));
        };
    }
