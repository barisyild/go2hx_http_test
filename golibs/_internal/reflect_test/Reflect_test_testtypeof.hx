package _internal.reflect_test;
function testTypeOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1149"
        {
            var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf((null : stdgo.AnyInterface)) : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_typ != null) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1150"
                _t.errorf(("expected nil type for nil value; got %v" : stdgo.GoString), ({
                    final __t__ = _typ;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1152"
        if (_internal.reflect_test.Reflect_test__deepequaltests._deepEqualTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__deepequaltests._deepEqualTests) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._a)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1154"
            if (!_v.isValid()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1155"
                continue;
            };
            var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_test._a) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1158"
            if (!((_typ.string() : String) == (_v.type().string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1159"
                _t.errorf(("TypeOf(%v) = %v, but ValueOf(%v).Type() = %v" : stdgo.GoString), _test._a, ({
                    final __t__ = _typ;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _test._a, ({
                    final __t__ = _v.type();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
