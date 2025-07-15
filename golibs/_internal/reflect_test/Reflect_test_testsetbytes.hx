package _internal.reflect_test;
function testSetBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _x:_internal.reflect_test.Reflect_test_t_testsetbytes___localname___b_92498.T_testSetBytes___localname___B_92498 = (new _internal.reflect_test.Reflect_test_t_testsetbytes___localname___b_92498.T_testSetBytes___localname___B_92498(0, 0) : _internal.reflect_test.Reflect_test_t_testsetbytes___localname___b_92498.T_testSetBytes___localname___B_92498);
        var _y = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3745"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetbytes___localname___b_92498dott_testsetbytes___localname___b_92498.__type___internaldotreflect_testdotReflect_test_t_testsetbytes___localname___b_92498dotT_testSetBytes___localname___B_92498 })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_testsetbytes___localname___b_92498.T_testSetBytes___localname___B_92498>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetbytes___localname___b_92498dott_testsetbytes___localname___b_92498.__type___internaldotreflect_testdotReflect_test_t_testsetbytes___localname___b_92498dotT_testSetBytes___localname___B_92498 })))).elem().setBytes(_y);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3746"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_x, _y)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3747"
            _t.fatalf(("ValueOf(%v).Bytes() = %v" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetbytes___localname___b_92498dott_testsetbytes___localname___b_92498.__type___internaldotreflect_testdotReflect_test_t_testsetbytes___localname___b_92498dotT_testSetBytes___localname___B_92498)), new stdgo.AnyInterface(_y, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3749"
        if (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3750"
            _t.errorf(("ValueOf(%p).Bytes() = %p" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
    }
