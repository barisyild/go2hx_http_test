package _internal.reflect_test;
function testMakeFuncInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fn = @:assignType (function(_i:stdgo.GoInt):stdgo.GoInt {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2236"
            return _i;
        } : stdgo.GoInt -> stdgo.GoInt);
        var _fn__pointer__ = stdgo.Go.pointer(_fn);
        var _incr = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2238"
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((_in[(0 : stdgo.GoInt)].int_() + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        var _fv = @:assignType (stdgo._internal.reflect.Reflect_makefunc.makeFunc(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_fn, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))), _incr)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2241"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_fn__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) })))).elem().set(_fv?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2242"
        {
            var _r = @:assignType (_fn((2 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((3 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2243"
                _t.errorf(("Call returned %d, want 3" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2245"
        {
            var _r = @:assignType (_fv.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((14 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_r != ((15i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2246"
                _t.errorf(("Call returned %d, want 15" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2248"
        {
            var _r = @:assignType ((stdgo.Go.typeAssert(_fv.interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> stdgo.GoInt)((26 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((27 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2249"
                _t.errorf(("Call returned %d, want 27" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
