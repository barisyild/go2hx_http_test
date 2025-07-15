package _internal.reflect_test;
function _check2ndField(_x:stdgo.AnyInterface, _offs:stdgo.GoUIntptr, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_x)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _f = @:assignType (_s.type().field((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1293"
        if (_f.offset != (_offs)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1294"
            _t.error(new stdgo.AnyInterface(("mismatched offsets in structure alignment:" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_f.offset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))), new stdgo.AnyInterface(_offs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))));
        };
    }
