package _internal.reflect_test;
function testNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7321"
        if (_internal.reflect_test.Reflect_test__nametests._nameTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__nametests._nameTests) {
            var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_test._v).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7323"
            {
                var _got = @:assignType (_typ.name()?.__copy__() : stdgo.GoString);
                if (_got != (_test._want)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7324"
                    _t.errorf(("%v Name()=%q, want %q" : stdgo.GoString), ({
                        final __t__ = _typ;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
