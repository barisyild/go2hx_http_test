package _internal.reflect_test;
function testValueToString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L596"
        if (_internal.reflect_test.Reflect_test__valuetostringtests._valueToStringTests != null) for (_i => _test in _internal.reflect_test.Reflect_test__valuetostringtests._valueToStringTests) {
            var _s = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(stdgo._internal.reflect.Reflect_valueof.valueOf(_test._i)?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L598"
            if (_s != (_test._s)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L599"
                _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
