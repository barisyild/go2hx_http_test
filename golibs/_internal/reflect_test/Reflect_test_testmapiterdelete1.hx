package _internal.reflect_test;
function testMapIterDelete1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _iter = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).mapRange();
        var _got:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7735"
        while (_iter.next()) {
            _got = (_got.__append__(stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(stdgo.Go.asInterface(_iter.key(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(stdgo.Go.asInterface(_iter.value(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7737"
            if (_m != null) _m.__remove__(("one" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7738"
            if (_m != null) _m.__remove__(("two" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7739"
            if (_m != null) _m.__remove__(("three" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7741"
        if ((_got.length) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7742"
            _t.errorf(("iterator returned wrong number of elements: got %d, want 1" : stdgo.GoString), new stdgo.AnyInterface((_got.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
