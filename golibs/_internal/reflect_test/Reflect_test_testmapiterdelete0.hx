package _internal.reflect_test;
function testMapIterDelete0(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _iter = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).mapRange();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7722"
        if (_m != null) _m.__remove__(("one" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7723"
        if (_m != null) _m.__remove__(("two" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7724"
        if (_m != null) _m.__remove__(("three" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7725"
        {
            var __0 = @:assignType (_internal.reflect_test.Reflect_test__iteratetostring._iterateToString(_iter)?.__copy__() : stdgo.GoString), __1 = @:assignType (("[]" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7726"
                _t.errorf(("iterator returned deleted elements: got %s, want %s" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
