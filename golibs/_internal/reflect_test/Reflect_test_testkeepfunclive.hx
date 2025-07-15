package _internal.reflect_test;
function testKeepFuncLive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(function(_i:stdgo.GoInt):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _f:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = null, _g:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> -> stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = null;
        _f = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6789"
            _internal.reflect_test.Reflect_test__clobber._clobber();
            var _i = @:assignType (_in[(0 : stdgo.GoInt)].int_() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6791"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6802"
                (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _g).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> Void)((_i - (1 : stdgo.GoInt) : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6804"
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        _g = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6807"
            _internal.reflect_test.Reflect_test__clobber._clobber();
            var _i = @:assignType (_in[(0 : stdgo.GoInt)].int_() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6809"
            (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _f).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> Void)(_i);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6810"
            return (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6812"
        stdgo._internal.reflect.Reflect_makefunc.makeFunc(_typ, _f).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((10 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
    }
