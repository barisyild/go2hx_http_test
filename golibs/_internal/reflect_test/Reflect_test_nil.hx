package _internal.reflect_test;
function nil(_a:stdgo.AnyInterface, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_a).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1325"
        if (!_n.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1326"
            _t.errorf(("%v should be nil" : stdgo.GoString), _a);
        };
    }
