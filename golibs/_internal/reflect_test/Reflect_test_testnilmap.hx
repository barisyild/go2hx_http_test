package _internal.reflect_test;
function testNilMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _keys = _mv.mapKeys();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1614"
        if ((_keys.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1615"
            _t.errorf((">0 keys for nil map: %v" : stdgo.GoString), new stdgo.AnyInterface(_keys, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }))));
        };
        var _x = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1620"
        if (_x.kind() != ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1621"
            _t.errorf(("m.MapIndex(\"hello\") for nil map = %v, want Invalid Value" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
        };
        var _mbig:stdgo.GoMap<stdgo.GoString, stdgo.GoArray<stdgo.GoUInt8>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoArray<stdgo.GoUInt8>>);
        _x = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_mbig, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 10485760) })))).mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1627"
        if (_x.kind() != ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1628"
            _t.errorf(("mbig.MapIndex(\"hello\") for nil map = %v, want Invalid Value" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_x, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1632"
        _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("hi" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
    }
