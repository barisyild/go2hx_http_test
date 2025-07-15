package _internal.reflect_test;
function testConvertNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        _internal.reflect_test.Reflect_test__gfloat32._gFloat32 = stdgo._internal.math.Math_float32frombits.float32frombits((2139095041u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4734"
        stdgo._internal.runtime.Runtime_gosched.gosched();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4735"
        {
            var _got = @:assignType (stdgo._internal.math.Math_float32bits.float32bits(_internal.reflect_test.Reflect_test__gfloat32._gFloat32) : stdgo.GoUInt32);
            if (_got != ((2139095041u32 : stdgo.GoUInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4736"
                _t.errorf(("store/load of sNaN not faithful, got %x want %x" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface((2139095041u32 : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
            };
        };
        {};
        var _x = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((stdgo._internal.math.Math_float32frombits.float32frombits((2139095041u32 : stdgo.GoUInt32)) : _internal.reflect_test.Reflect_test_t_testconvertnans___localname___myfloat32_127187.T_testConvertNaNs___localname___myFloat32_127187), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testconvertnans___localname___myfloat32_127187dott_testconvertnans___localname___myfloat32_127187.__type___internaldotreflect_testdotReflect_test_t_testconvertnans___localname___myfloat32_127187dotT_testConvertNaNs___localname___myFloat32_127187)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _y = @:assignType (_x.convert(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind)))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _z = @:assignType (stdgo.Go.typeAssert(_y.interface_(), stdgo._internal.internal.reflect.GoType.basic(float32_kind)) : stdgo.GoFloat32);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4743"
        {
            var _got = @:assignType (stdgo._internal.math.Math_float32bits.float32bits(_z) : stdgo.GoUInt32);
            if (_got != ((2139095041u32 : stdgo.GoUInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4744"
                _t.errorf(("signaling nan conversion got %x, want %x" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface((2139095041u32 : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
            };
        };
    }
