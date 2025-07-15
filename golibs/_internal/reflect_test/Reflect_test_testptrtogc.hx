package _internal.reflect_test;
function testPtrToGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_testptrtogc___localname___t_82765.T_testPtrToGC___localname___T_82765), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testptrtogc___localname___t_82765dott_testptrtogc___localname___t_82765.__type___internaldotreflect_testdotReflect_test_t_testptrtogc___localname___t_82765dotT_testPtrToGC___localname___T_82765))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _pt = @:assignType (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_tt) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3374"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_pt).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
var _p = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.GoUIntptr>));
_p.value = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value.value = (new stdgo.GoUIntptr(_i) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3379"
                _v.elem().set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }) })))).convert(_pt).__copy__());
_x = (_x.__append__(_v.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3382"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3384"
        if (_x != null) for (_i => _xi in _x) {
            var _k = @:assignType (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(_xi).elem().elem().elem().interface_(), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3386"
            if (_k != ((new stdgo.GoUIntptr(_i) : stdgo.GoUIntptr))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3387"
                _t.errorf(("lost x[%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
