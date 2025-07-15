package _internal.reflect_test;
function testMapOfGCValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_testmapofgcvalues___localname___t_162647.T_testMapOfGCValues___localname___T_162647), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testmapofgcvalues___localname___t_162647dott_testmapofgcvalues___localname___t_162647.__type___internaldotreflect_testdotReflect_test_t_testmapofgcvalues___localname___t_162647dotT_testMapOfGCValues___localname___T_162647))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _mt = @:assignType (stdgo._internal.reflect.Reflect_mapof.mapOf(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), _tt) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6207"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_makemap.makeMap(_mt).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6209"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (100 : stdgo.GoInt) : Bool)) {
                        var _p = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value = (new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6212"
                        _v.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) })))).convert(_tt).__copy__());
                        _j++;
                    };
                };
var _pv = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_mt).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6215"
                _pv.elem().set(_v.__copy__());
_x = (_x.__append__(_pv.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6218"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6220"
        if (_x != null) for (_i => _xi in _x) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_xi).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6222"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < (100 : stdgo.GoInt) : Bool)) {
                    var _k = @:assignType (stdgo.Go.typeAssert(_v.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__()).elem().interface_(), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6224"
                    if (_k != ((new stdgo.GoUIntptr(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6225"
                        _t.errorf(("lost x[%d][%d] = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _j++;
                };
            };
        };
    }
