package _internal.reflect_test;
function _checkSameType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo._internal.reflect.Reflect_type_.Type_, _y:stdgo.AnyInterface):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4826"
        if ((!((_x.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(_y).string() : String)) || !((stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo._internal.reflect.Reflect_zero.zero(_x).interface_()).string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(_y).string() : String)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4827"
            _t.errorf(("did not find preexisting type for %s (vs %s)" : stdgo.GoString), ({
                final __t__ = stdgo._internal.reflect.Reflect_typeof.typeOf(({
                    final __t__ = _x;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), ({
                final __t__ = stdgo._internal.reflect.Reflect_typeof.typeOf(_y);
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
