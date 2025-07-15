package _internal.reflect_test;
function testConvertPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _p = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _pt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4687"
        if (!_v.type().convertibleTo(_pt)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4688"
            _t.errorf(("[]byte should be convertible to *[8]byte" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4690"
        if (_v.canConvert(_pt)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4691"
            _t.errorf(("slice with length 4 should not be convertible to *[8]byte" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4693"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect: cannot convert slice with length 4 to pointer to array with length 8" : stdgo.GoString), function():Void {
            _v.convert(_pt);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4697"
        if (_v.canConvert(_pt.elem())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4698"
            _t.errorf(("slice with length 4 should not be convertible to [8]byte" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4700"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect: cannot convert slice with length 4 to array with length 8" : stdgo.GoString), function():Void {
            _v.convert(_pt.elem());
        });
    }
