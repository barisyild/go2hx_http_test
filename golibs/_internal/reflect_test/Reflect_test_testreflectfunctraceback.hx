package _internal.reflect_test;
function testReflectFuncTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = @:assignType (stdgo._internal.reflect.Reflect_makefunc.makeFunc(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(function():Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))), _internal.reflect_test.Reflect_test_gcfunc.gCFunc)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6494"
        _f.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
    }
