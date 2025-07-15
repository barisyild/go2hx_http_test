package _internal.reflect_test;
function testMapOfGCKeys(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_testmapofgckeys___localname___t_161754.T_testMapOfGCKeys___localname___T_161754), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testmapofgckeys___localname___t_161754dott_testmapofgckeys___localname___t_161754.__type___internaldotreflect_testdotReflect_test_t_testmapofgckeys___localname___t_161754dotT_testMapOfGCKeys___localname___T_161754))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _mt = @:assignType (stdgo._internal.reflect.Reflect_mapof.mapOf(_tt, stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6169"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_makemap.makeMap(_mt).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6171"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (100 : stdgo.GoInt) : Bool)) {
                        var _p = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value = (new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6174"
                        _v.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) })))).convert(_tt).__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).__copy__());
                        _j++;
                    };
                };
var _pv = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_mt).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6177"
                _pv.elem().set(_v.__copy__());
_x = (_x.__append__(_pv.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6180"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6182"
        if (_x != null) for (_i => _xi in _x) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_xi).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _out:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6185"
            if (_v.mapKeys() != null) for (__1 => _kv in _v.mapKeys()) {
                _out = (_out.__append__(((stdgo.Go.typeAssert(_kv.elem().interface_(), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6188"
            stdgo._internal.sort.Sort_ints.ints(_out);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6189"
            if (_out != null) for (_j => _k in _out) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6190"
                if (_k != (((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6191"
                    _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
        };
    }
