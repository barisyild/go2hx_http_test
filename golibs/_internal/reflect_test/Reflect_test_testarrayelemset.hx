package _internal.reflect_test;
function testArrayElemSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 10) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 10) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L606"
        _v.index((4 : stdgo.GoInt)).setInt((123i64 : stdgo.GoInt64));
        var _s = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L609"
        if (_s != (("[10]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L610"
            _t.errorf(("[10]int: have %#q want %#q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("[10]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L614"
        _v.index((4 : stdgo.GoInt)).setInt((123i64 : stdgo.GoInt64));
        _s = _internal.reflect_test.Reflect_test__valuetostring._valueToString(_v?.__copy__())?.__copy__();
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L617"
        if (_s != (("[]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L618"
            _t.errorf(("[]int: have %#q want %#q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("[]int{1, 2, 3, 4, 123, 6, 7, 8, 9, 10}" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
