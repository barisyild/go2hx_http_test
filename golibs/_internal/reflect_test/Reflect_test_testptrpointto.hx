package _internal.reflect_test;
function testPtrPointTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
        var _i:stdgo.GoInt32 = (1234 : stdgo.GoInt32), _i__pointer__ = stdgo.Go.pointer(_i);
        var _vip = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_ip), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _vi = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_i__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L627"
        _vip.elem().set(_vi.addr()?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L628"
        if (_ip.value != ((1234 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L629"
            _t.errorf(("got %d, want 1234" : stdgo.GoString), new stdgo.AnyInterface(_ip.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
        _ip = (null : stdgo.Pointer<stdgo.GoInt32>);
        var _vp = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_ip), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L634"
        _vp.set(stdgo._internal.reflect.Reflect_zero.zero(_vp.type())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L635"
        if (_ip != null) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L636"
            _t.errorf(("got non-nil (%p), want nil" : stdgo.GoString), new stdgo.AnyInterface(_ip, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }))));
        };
    }
