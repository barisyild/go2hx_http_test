package _internal.reflect_test;
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1137"
        if (_internal.reflect_test.Reflect_test__deepequaltests._deepEqualTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__deepequaltests._deepEqualTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1138"
            if (_test._b == (new stdgo.AnyInterface(stdgo.Go.asInterface(((new _internal.reflect_test.Reflect_test_t_self.T_self() : _internal.reflect_test.Reflect_test_t_self.T_self)), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_selfdott_self.__type___internaldotreflect_testdotReflect_test_t_selfdotT_self), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_selfdott_self.__type___internaldotreflect_testdotReflect_test_t_selfdotT_self)))) {
                _test._b = _test._a;
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1141"
            {
                var _r = @:assignType (stdgo._internal.reflect.Reflect_deepequal.deepEqual(_test._a, _test._b) : Bool);
                if (_r != (_test._eq)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1142"
                    _t.errorf(("DeepEqual(%#v, %#v) = %v, want %v" : stdgo.GoString), _test._a, _test._b, new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_test._eq, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
