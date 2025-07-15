package _internal.reflect_test;
function testAlias(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = @:assignType ((("hello" : stdgo.GoString) : stdgo.GoString) : stdgo.GoString);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_x__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _oldvalue = @:assignType (_v.interface_() : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4076"
        _v.setString(("world" : stdgo.GoString));
        var _newvalue = @:assignType (_v.interface_() : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4079"
        if (((_oldvalue != new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) || (_newvalue != new stdgo.AnyInterface(("world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4080"
            _t.errorf(("aliasing: old=%q new=%q, want hello, world" : stdgo.GoString), _oldvalue, _newvalue);
        };
    }
