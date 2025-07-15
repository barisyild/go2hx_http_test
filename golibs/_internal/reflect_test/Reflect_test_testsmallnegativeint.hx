package _internal.reflect_test;
function testSmallNegativeInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _i = @:assignType ((-1 : stdgo.GoInt16) : stdgo.GoInt16);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int16_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3497"
        if (_v.int_() != ((-1i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3498"
            _t.errorf(("int16(-1).Int() returned %v" : stdgo.GoString), new stdgo.AnyInterface(_v.int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
    }
