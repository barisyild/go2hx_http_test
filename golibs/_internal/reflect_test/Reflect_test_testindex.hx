package _internal.reflect_test;
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _v = @:assignType (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_xs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))).index((3 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.basic(uint8_kind)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3505"
        if (_v != (_xs[((3 : stdgo.GoInt) : stdgo.GoInt)])) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3506"
            _t.errorf(("xs.Index(3) = %v; expected %v" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_xs[(3 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
        };
        var _xa = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(10 : stdgo.GoUInt8), (20 : stdgo.GoUInt8), (30 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (60 : stdgo.GoUInt8), (70 : stdgo.GoUInt8), (80 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_xa, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8)))).index((2 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.basic(uint8_kind)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3510"
        if (_v != (_xa[((2 : stdgo.GoInt) : stdgo.GoInt)])) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3511"
            _t.errorf(("xa.Index(2) = %v; expected %v" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_xa[(2 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
        };
        var _s = @:assignType (("0123456789" : stdgo.GoString) : stdgo.GoString);
        _v = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).index((3 : stdgo.GoInt)).interface_(), stdgo._internal.internal.reflect.GoType.basic(uint8_kind)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3515"
        if (_v != (_s[((3 : stdgo.GoInt) : stdgo.GoInt)])) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3516"
            _t.errorf(("s.Index(3) = %v; expected %v" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_s[(3 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
        };
    }
