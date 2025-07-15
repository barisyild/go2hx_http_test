package _internal.reflect_test;
function testValue_Equal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8290"
        if (_internal.reflect_test.Reflect_test__valueequaltests._valueEqualTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__valueequaltests._valueEqualTests) {
            var _v:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value), _u:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8292"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_test._v, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue) : stdgo._internal.reflect.Reflect_value.Value), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                }, _vv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _v = _vv?.__copy__();
                } else {
                    _v = stdgo._internal.reflect.Reflect_valueof.valueOf(_test._v)?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8298"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_test._u, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue) : stdgo._internal.reflect.Reflect_value.Value), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : stdgo._internal.reflect.Reflect_value.Value), _1 : false };
                }, _uu = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _u = _uu?.__copy__();
                } else {
                    _u = stdgo._internal.reflect.Reflect_valueof.valueOf(_test._u)?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8303"
            if (_test._vDeref) {
                _v = _v.elem()?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8307"
            if (_test._uDeref) {
                _u = _u.elem()?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8311"
            {
                var _r = @:assignType (_v.equal(_u?.__copy__()) : Bool);
                if (_r != (_test._eq)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8312"
                    _t.errorf(("%s == %s got %t, want %t" : stdgo.GoString), ({
                        final __t__ = _v.type();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), ({
                        final __t__ = _u.type();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_test._eq, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
