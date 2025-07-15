package _internal.reflect_test;
function testCopyArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = (new stdgo.GoArray<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _b = (new stdgo.GoArray<stdgo.GoInt>(11, 11, ...[
(11 : stdgo.GoInt),
(22 : stdgo.GoInt),
(33 : stdgo.GoInt),
(44 : stdgo.GoInt),
(1010 : stdgo.GoInt),
(99 : stdgo.GoInt),
(88 : stdgo.GoInt),
(77 : stdgo.GoInt),
(66 : stdgo.GoInt),
(55 : stdgo.GoInt),
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _c = _b?.__copy__();
        var _aa = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 8) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _ab = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 11) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 11) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L972"
        stdgo._internal.reflect.Reflect_copy.copy(_ab?.__copy__(), _aa?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L973"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_a.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L974"
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L975"
                    _t.errorf(("(i) a[%d]=%d, b[%d]=%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L978"
        {
            var _i = @:assignType (_a.length : stdgo.GoInt);
            while ((_i < (_b.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L979"
                if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L980"
                    _t.errorf(("(ii) b[%d]=%d, c[%d]=%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L982"
                    _t.logf(("elem %d is okay\n" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i++;
            };
        };
    }
