package _internal.reflect_test;
function testTypelinksSorted(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _last:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6233"
        if (stdgo._internal.reflect.Reflect_typelinks.typeLinks() != null) for (_i => _n in stdgo._internal.reflect.Reflect_typelinks.typeLinks()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6234"
            if ((_n < _last : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6235"
                _t.errorf(("typelinks not sorted: %q [%d] > %q [%d]" : stdgo.GoString), new stdgo.AnyInterface(_last, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            _last = _n?.__copy__();
        };
    }
