package _internal.reflect_test;
function testCallGC(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f = @:assignType (function(_a:stdgo.GoString, _b:stdgo.GoString, _c:stdgo.GoString, _d:stdgo.GoString, _e:stdgo.GoString):Void {} : (stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        var _g = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6774"
            stdgo._internal.runtime.Runtime_gc.gC();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6775"
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _f2 = @:assignType (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _g).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : (stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6779"
        _f2(("four" : stdgo.GoString), ("five5" : stdgo.GoString), ("six666" : stdgo.GoString), ("seven77" : stdgo.GoString), ("eight888" : stdgo.GoString));
    }
