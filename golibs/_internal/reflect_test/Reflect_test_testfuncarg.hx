package _internal.reflect_test;
function testFuncArg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f1 = @:assignType (function(_i:stdgo.GoInt, _f:stdgo.GoInt -> stdgo.GoInt):stdgo.GoInt {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3654"
            return _f(_i);
        } : (stdgo.GoInt, stdgo.GoInt -> stdgo.GoInt) -> stdgo.GoInt);
        var _f2 = @:assignType (function(_i:stdgo.GoInt):stdgo.GoInt {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3655"
            return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        } : stdgo.GoInt -> stdgo.GoInt);
        var _r = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_f1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((100 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_f2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3657"
        if (_r[(0 : stdgo.GoInt)].int_() != ((101i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3658"
            _t.errorf(("function returned %d, want 101" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)].int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
    }
