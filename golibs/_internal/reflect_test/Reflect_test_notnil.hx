package _internal.reflect_test;
function notNil(_a:stdgo.AnyInterface, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_a).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1332"
        if (_n.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1333"
            _t.errorf(("value of type %v should not be nil" : stdgo.GoString), new stdgo.AnyInterface((stdgo._internal.reflect.Reflect_valueof.valueOf(_a).type().string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
