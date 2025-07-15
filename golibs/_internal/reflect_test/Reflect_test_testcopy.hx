package _internal.reflect_test;
function testCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (10 : stdgo.GoInt), (9 : stdgo.GoInt), (8 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _b = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
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
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _c = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
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
(44 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L890"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_b.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L891"
                if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L892"
                    _t.fatalf(("b != c before test" : stdgo.GoString));
                };
                _i++;
            };
        };
        var _a1 = _a;
        var _b1 = _b;
        var _aa = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_a1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _ab = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_b1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L899"
        {
            var _tocopy = @:assignType (1 : stdgo.GoInt);
            while ((_tocopy <= (7 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L900"
                _aa.setLen(_tocopy);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L901"
                stdgo._internal.reflect.Reflect_copy.copy(_ab.__copy__(), _aa.__copy__());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L902"
                _aa.setLen((8 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L903"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < _tocopy : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L904"
                        if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L905"
                            _t.errorf(("(i) tocopy=%d a[%d]=%d, b[%d]=%d" : stdgo.GoString), new stdgo.AnyInterface(_tocopy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _i++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L909"
                {
                    var _i = @:assignType (_tocopy : stdgo.GoInt);
                    while ((_i < (_b.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L910"
                        if (_b[(_i : stdgo.GoInt)] != (_c[(_i : stdgo.GoInt)])) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L911"
                            if ((_i < (_a.length) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L912"
                                _t.errorf(("(ii) tocopy=%d a[%d]=%d, b[%d]=%d, c[%d]=%d" : stdgo.GoString), new stdgo.AnyInterface(_tocopy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L915"
                                _t.errorf(("(iii) tocopy=%d b[%d]=%d, c[%d]=%d" : stdgo.GoString), new stdgo.AnyInterface(_tocopy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L919"
                            _t.logf(("tocopy=%d elem %d is okay\n" : stdgo.GoString), new stdgo.AnyInterface(_tocopy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
                        _i++;
                    };
                };
                _tocopy++;
            };
        };
    }
