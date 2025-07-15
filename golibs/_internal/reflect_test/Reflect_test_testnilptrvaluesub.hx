package _internal.reflect_test;
function testNilPtrValueSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _pi:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1540"
        {
            var _pv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_pi, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (_pv.elem().isValid()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1541"
                _t.error(new stdgo.AnyInterface(("ValueOf((*int)(nil)).Elem().IsValid()" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
