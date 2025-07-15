package _internal.reflect_test;
function testDeepEqualUnexportedMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x1 = @:assignType (new _internal.reflect_test.Reflect_test_unexpt.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_unexpt.UnexpT);
        var _x2 = @:assignType (new _internal.reflect_test.Reflect_test_unexpt.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((1 : stdgo.GoInt), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_unexpt.UnexpT);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1215"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT })) : stdgo.Ref<_internal.reflect_test.Reflect_test_unexpt.UnexpT>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT }))), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT })) : stdgo.Ref<_internal.reflect_test.Reflect_test_unexpt.UnexpT>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1216"
            _t.error(new stdgo.AnyInterface(("DeepEqual(x1, x2) = false, want true" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _y1 = @:assignType (new _internal.reflect_test.Reflect_test_unexpt.UnexpT(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((2 : stdgo.GoInt), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)) : _internal.reflect_test.Reflect_test_unexpt.UnexpT);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1220"
        if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT })) : stdgo.Ref<_internal.reflect_test.Reflect_test_unexpt.UnexpT>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT }))), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_y1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT })) : stdgo.Ref<_internal.reflect_test.Reflect_test_unexpt.UnexpT>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_unexptdotunexpt.__type___internaldotreflect_testdotReflect_test_unexptdotUnexpT }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1221"
            _t.error(new stdgo.AnyInterface(("DeepEqual(x1, y1) = true, want false" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
