package _internal.reflect_test;
function _isNonNil(_x:stdgo.AnyInterface):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4061"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4062"
            throw new stdgo.AnyInterface(("nil interface" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
