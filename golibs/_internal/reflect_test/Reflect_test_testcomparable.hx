package _internal.reflect_test;
function testComparable(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4779"
        if (_internal.reflect_test.Reflect_test__comparabletests._comparableTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__comparabletests._comparableTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4780"
            {
                var _ok = @:assignType (_tt._typ.comparable_() : Bool);
                if (_ok != (_tt._ok)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4781"
                    _t.errorf(("TypeOf(%v).Comparable() = %v, want %v" : stdgo.GoString), ({
                        final __t__ = _tt._typ;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
