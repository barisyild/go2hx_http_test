package _internal.reflect_test;
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_xs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).slice((3 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3523"
        if ((_v.length) != ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3524"
            _t.errorf(("len(xs.Slice(3, 5)) = %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3526"
        if (_v.capacity != ((5 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3527"
            _t.errorf(("cap(xs.Slice(3, 5)) = %d" : stdgo.GoString), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3529"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface((_xs.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3530"
            _t.errorf(("xs.Slice(3, 5)[0:5] = %v" : stdgo.GoString), new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
        var _xa = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })))).elem().slice((2 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3534"
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3535"
            _t.errorf(("len(xa.Slice(2, 5)) = %d" : stdgo.GoString), new stdgo.AnyInterface((_v.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3537"
        if (_v.capacity != ((6 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3538"
            _t.errorf(("cap(xa.Slice(2, 5)) = %d" : stdgo.GoString), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3540"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface((_xa.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3541"
            _t.errorf(("xs.Slice(2, 5)[0:6] = %v" : stdgo.GoString), new stdgo.AnyInterface((_v.__slice__((0 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
        var _s = @:assignType (("0123456789" : stdgo.GoString) : stdgo.GoString);
        var _vs = @:assignType ((stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).slice((3 : stdgo.GoInt), (5 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3545"
        if (_vs != ((_s.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3546"
            _t.errorf(("s.Slice(3, 5) = %q; expected %q" : stdgo.GoString), new stdgo.AnyInterface(_vs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_s.__slice__((3 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _rv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_xs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _rv = _rv.slice((3 : stdgo.GoInt), (4 : stdgo.GoInt))?.__copy__();
        var _ptr2 = @:assignType (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        _rv = _rv.slice((5 : stdgo.GoInt), (5 : stdgo.GoInt))?.__copy__();
        var _ptr3 = @:assignType (_rv.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3554"
        if (_ptr3 != (_ptr2)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3555"
            _t.errorf(("xs.Slice(3,4).Slice3(5,5).UnsafePointer() = %p, want %p" : stdgo.GoString), new stdgo.AnyInterface(_ptr3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))), new stdgo.AnyInterface(_ptr2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))));
        };
    }
