package _internal.reflect_test;
function testMakeFuncVariadic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fn = function(__1:stdgo.GoInt, _is:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
            var _is = new stdgo.Slice<stdgo.GoInt>(_is.length, 0, ..._is);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2255"
            return (null : stdgo.Slice<stdgo.GoInt>);
        };
        var _fn__pointer__ = stdgo.Go.pointer(_fn);
        var _fv = @:assignType (stdgo._internal.reflect.Reflect_makefunc.makeFunc(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_fn, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))), function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2256"
            return (_in.__slice__((1 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        })?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2257"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_fn__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) })))).elem().set(_fv?.__copy__());
        var _r = _fn((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2260"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2261"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _r = _fn((1 : stdgo.GoInt), ...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2265"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2266"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _r = (stdgo.Go.typeAssert(_fv.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(3, 3, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((2 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((3 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2270"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2271"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _r = (stdgo.Go.typeAssert(_fv.callSlice((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2275"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2276"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        var _f = (stdgo.Go.typeAssert(_fv.interface_(), stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : (stdgo.GoInt, haxe.Rest<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoInt>);
        _r = _f((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2282"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2283"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _r = _f((1 : stdgo.GoInt), ...((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2286"
        if (((_r[(0 : stdgo.GoInt)] != (2 : stdgo.GoInt)) || (_r[(1 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2287"
            _t.errorf(("Call returned [%v, %v]; want 2, 3" : stdgo.GoString), new stdgo.AnyInterface(_r[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_r[(1 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
