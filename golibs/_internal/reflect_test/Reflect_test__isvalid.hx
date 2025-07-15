package _internal.reflect_test;
function _isValid(_v:stdgo._internal.reflect.Reflect_value.Value):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4067"
        if (!_v.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4068"
            throw new stdgo.AnyInterface(("zero Value" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
