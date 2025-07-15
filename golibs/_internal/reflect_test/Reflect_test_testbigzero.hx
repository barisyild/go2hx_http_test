package _internal.reflect_test;
function testBigZero(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _v:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
        var _z = (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_zero.zero(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1024)))).type()).interface_(), stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1024)) : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6518"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (1024 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6519"
                if (_z[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6520"
                    _t.fatalf(("Zero object not all zero, index %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i++;
            };
        };
    }
