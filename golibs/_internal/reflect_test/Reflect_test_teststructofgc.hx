package _internal.reflect_test;
function testStructOfGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : _internal.reflect_test.Reflect_test_t_teststructofgc___localname___t_146001.T_testStructOfGC___localname___T_146001), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_teststructofgc___localname___t_146001dott_teststructofgc___localname___t_146001.__type___internaldotreflect_testdotReflect_test_t_teststructofgc___localname___t_146001dotT_testStructOfGC___localname___T_146001))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("X" : stdgo.GoString), type : _tt } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("Y" : stdgo.GoString), type : _tt } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        var _st = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf(_fields) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        var _x:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5493"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_st).elem().__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5495"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < _v.numField() : Bool)) {
                        var _p = stdgo.Go.pointer(new stdgo.GoUIntptr(0));
_p.value = (new stdgo.GoUIntptr(((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5498"
                        _v.field(_j).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) })))).convert(_tt).__copy__());
                        _j++;
                    };
                };
_x = (_x.__append__(_v.interface_()) : stdgo.Slice<stdgo.AnyInterface>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5502"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5504"
        if (_x != null) for (_i => _xi in _x) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_xi)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5506"
            {
                var _j = @:assignType (0 : stdgo.GoInt);
                while ((_j < _v.numField() : Bool)) {
                    var _k = @:assignType (_v.field(_j).elem().interface_() : stdgo.AnyInterface);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5508"
                    if (_k != (new stdgo.AnyInterface(((new stdgo.GoUIntptr(((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt)) : stdgo.GoUIntptr) : stdgo.GoUIntptr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5509"
                        _t.errorf(("lost x[%d].%c = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(("XY" : stdgo.GoString)[(_j : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), _k, new stdgo.AnyInterface(((_i * (10000 : stdgo.GoInt) : stdgo.GoInt) + _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _j++;
                };
            };
        };
    }
