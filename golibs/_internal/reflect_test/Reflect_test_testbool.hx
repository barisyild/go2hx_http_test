package _internal.reflect_test;
function testBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L41"
        if (_v.bool_() != (true)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L42"
            _t.fatal(new stdgo.AnyInterface(("ValueOf(true).Bool() = false" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
