package _internal.reflect_test;
function testTagGet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3697"
        if (_internal.reflect_test.Reflect_test__taggettests._tagGetTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__taggettests._tagGetTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3698"
            {
                var _v = @:assignType (_tt.tag.get(_tt.key?.__copy__())?.__copy__() : stdgo.GoString);
                if (_v != (_tt.value)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3699"
                    _t.errorf(("StructTag(%#q).Get(%#q) = %#q, want %#q" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_tt.tag, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structtagdotstructtag.__type__stdgodot_internaldotreflectdotReflect_structtagdotStructTag), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structtagdotstructtag.__type__stdgodot_internaldotreflectdotReflect_structtagdotStructTag)), new stdgo.AnyInterface(_tt.key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt.value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
