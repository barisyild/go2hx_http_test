package _internal.reflect_test;
function testArrayOfPanicOnNegativeLength(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5073"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect: negative length passed to ArrayOf" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5074"
            stdgo._internal.reflect.Reflect_arrayof.arrayOf((-1 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)))));
        });
    }
