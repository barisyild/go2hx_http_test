package _internal.reflect_test;
function testSetValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L303"
        if (_internal.reflect_test.Reflect_test__valuetests._valueTests != null) for (_i => _tt in _internal.reflect_test.Reflect_test__valuetests._valueTests) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_tt._i).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L305"
            {
                final __value__ = _v.kind();
                if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L307"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((132 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L309"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((8 : stdgo.GoInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int8_kind))))?.__copy__());
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L311"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((16 : stdgo.GoInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int16_kind))))?.__copy__());
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L313"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((32 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))))?.__copy__());
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L315"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((64i64 : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__());
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L317"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((132u32 : stdgo.GoUInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint_kind))))?.__copy__());
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L319"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((8 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))?.__copy__());
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L321"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((16 : stdgo.GoUInt16), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__());
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L323"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((32u32 : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__());
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L325"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((64i64 : stdgo.GoUInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))))?.__copy__());
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L327"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((256.25 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))))?.__copy__());
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L329"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((512.125 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))))?.__copy__());
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L331"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.GoComplex128(532.125f64, 10f64) : stdgo.GoComplex64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(complex64_kind))))?.__copy__());
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L333"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.GoComplex128(564.25f64, 1f64) : stdgo.GoComplex128), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(complex128_kind))))?.__copy__());
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L335"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("stringy cheese" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
                } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L337"
                    _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__());
                };
            };
            var _s = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L340"
            if (_s != (_tt._s)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L341"
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
