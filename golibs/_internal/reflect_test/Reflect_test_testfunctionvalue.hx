package _internal.reflect_test;
function testFunctionValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo.AnyInterface = new stdgo.AnyInterface(function():Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })));
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_x)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L739"
        if (stdgo._internal.fmt.Fmt_sprint.sprint(_v.interface_()) != (stdgo._internal.fmt.Fmt_sprint.sprint(_x))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L740"
            _t.fatalf(("TestFunction returned wrong pointer" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L742"
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v.type().string() : stdgo.GoString)?.__copy__(), ("func()" : stdgo.GoString));
    }
