package _internal.reflect_test;
function _testType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _i:stdgo.GoInt, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _want:stdgo.GoString):Void {
        var _s = @:assignType ((_typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L246"
        if (_s != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L247"
            _t.errorf(("#%d: have %#q, want %#q" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
