package _internal.reflect_test;
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3472"
        _internal.reflect_test.Reflect_test__noalloc._noAlloc(_t, (100 : stdgo.GoInt), function(_j:stdgo.GoInt):Void {
            var _i:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            var _v:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            _i = new stdgo.AnyInterface(function(_j:stdgo.GoInt):stdgo.GoInt {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3486"
                return _j;
            }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })));
            _v = stdgo._internal.reflect.Reflect_valueof.valueOf(_i)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3488"
            if ((stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> stdgo.GoInt)(_j) != (_j)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3489"
                throw new stdgo.AnyInterface(("wrong result" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        });
    }
