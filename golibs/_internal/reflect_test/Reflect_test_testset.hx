package _internal.reflect_test;
function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L258"
        if (_internal.reflect_test.Reflect_test__valuetests._valueTests != null) for (_i => _tt in _internal.reflect_test.Reflect_test__valuetests._valueTests) {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_tt._i)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            _v = _v.elem()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L261"
            {
                final __value__ = _v.kind();
                if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L263"
                    _v.setInt((132i64 : stdgo.GoInt64));
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L265"
                    _v.setInt((8i64 : stdgo.GoInt64));
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L267"
                    _v.setInt((16i64 : stdgo.GoInt64));
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L269"
                    _v.setInt((32i64 : stdgo.GoInt64));
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L271"
                    _v.setInt((64i64 : stdgo.GoInt64));
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L273"
                    _v.setUint((132i64 : stdgo.GoUInt64));
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L275"
                    _v.setUint((8i64 : stdgo.GoUInt64));
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L277"
                    _v.setUint((16i64 : stdgo.GoUInt64));
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L279"
                    _v.setUint((32i64 : stdgo.GoUInt64));
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L281"
                    _v.setUint((64i64 : stdgo.GoUInt64));
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L283"
                    _v.setFloat((256.25 : stdgo.GoFloat64));
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L285"
                    _v.setFloat((512.125 : stdgo.GoFloat64));
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L287"
                    _v.setComplex(new stdgo.GoComplex128(532.125f64, 10f64));
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L289"
                    _v.setComplex(new stdgo.GoComplex128(564.25f64, 1f64));
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L291"
                    _v.setString(("stringy cheese" : stdgo.GoString));
                } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L293"
                    _v.setBool(true);
                };
            };
            var _s = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_v?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L296"
            if (_s != (_tt._s)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L297"
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_tt._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
