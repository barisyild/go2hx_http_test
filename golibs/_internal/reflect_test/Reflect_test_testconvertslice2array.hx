package _internal.reflect_test;
function testConvertSlice2Array(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _p = (new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        var _pt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 4)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _ov = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v = @:assignType (_ov.convert(_pt)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4713"
        if (_v.canAddr()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4714"
            _t.fatalf(("convert slice to non-empty array returns a addressable copy array" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4716"
        if (_s != null) for (_i => _ in _s) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4717"
            _ov.index(_i).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4719"
        if (_s != null) for (_i => _ in _s) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4720"
            if (_v.index(_i).int_() != ((0i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4721"
                _t.fatalf(("slice (%v) mutation visible in converted result (%v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_ov, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
        };
    }
