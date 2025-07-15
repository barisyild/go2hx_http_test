package _internal.reflect_test;
function testArrayOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_testarrayofgc___localname___t_133240.T_testArrayOfGC___localname___T_133240), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testarrayofgc___localname___t_133240dott_testarrayofgc___localname___t_133240.__type___internaldotreflect_testdotReflect_test_t_testarrayofgc___localname___t_133240dotT_testArrayOfGC___localname___T_133240))) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4963"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_arrayof.arrayOf((100 : stdgo.GoInt), _tt)).elem().__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4965"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < _v.len() : Bool)) {
                        var _p = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value = (new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4968"
                        _v.index(_j).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) })))).convert(_tt).__copy__());
                        _j++;
                    };
                };
_x = (_x.__append__(_v.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4972"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4974"
        if (_x != null) for (_i => _xi in _x) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_xi)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4976"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < _v.len() : Bool)) {
                    var _k = @:assignType (_v.index(_j).elem().interface_() : stdgo.AnyInterface);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4978"
                    if (_k != (new stdgo.AnyInterface(((new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4979"
                        _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _k, new stdgo.AnyInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _j++;
                };
            };
        };
    }
