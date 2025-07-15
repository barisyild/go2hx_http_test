package _internal.reflect_test;
function testPtrSetNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _i:stdgo.GoInt32 = (1234 : stdgo.GoInt32), _i__pointer__ = stdgo.Go.pointer(_i);
        var _ip = _i__pointer__;
        var _vip = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_ip), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L644"
        _vip.elem().set(stdgo._internal.reflect.Reflect_zero.zero(_vip.elem().type())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L645"
        if (_ip != null) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L646"
            _t.errorf(("got non-nil (%d), want nil" : stdgo.GoString), new stdgo.AnyInterface(_ip.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
    }
