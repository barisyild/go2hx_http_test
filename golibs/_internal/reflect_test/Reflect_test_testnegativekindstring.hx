package _internal.reflect_test;
function testNegativeKindString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = @:assignType (-1 : stdgo.GoInt);
        var _s = @:assignType (((_x : stdgo._internal.reflect.Reflect_kind.Kind).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = @:assignType (("kind-1" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7893"
        if (_s != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7894"
            _t.fatalf(("Kind(-1).String() = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
