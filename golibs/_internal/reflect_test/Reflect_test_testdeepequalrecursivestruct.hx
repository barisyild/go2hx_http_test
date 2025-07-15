package _internal.reflect_test;
function testDeepEqualRecursiveStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_recursive.Recursive), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive })) : stdgo.Ref<_internal.reflect_test.Reflect_test_recursive.Recursive>), __1 = (stdgo.Go.setRef(({} : _internal.reflect_test.Reflect_test_recursive.Recursive), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive })) : stdgo.Ref<_internal.reflect_test.Reflect_test_recursive.Recursive>);
var _b = __1, _a = __0;
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_recursive.Recursive((12 : stdgo.GoInt), _a) : _internal.reflect_test.Reflect_test_recursive.Recursive);
            var x = (_a : _internal.reflect_test.Reflect_test_recursive.Recursive);
            x._x = __tmp__?._x;
            x._r = __tmp__?._r;
        };
        {
            var __tmp__ = (new _internal.reflect_test.Reflect_test_recursive.Recursive((12 : stdgo.GoInt), _b) : _internal.reflect_test.Reflect_test_recursive.Recursive);
            var x = (_b : _internal.reflect_test.Reflect_test_recursive.Recursive);
            x._x = __tmp__?._x;
            x._r = __tmp__?._r;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1173"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_a, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_recursivedotrecursive.__type___internaldotreflect_testdotReflect_test_recursivedotRecursive }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1174"
            _t.error(new stdgo.AnyInterface(("DeepEqual(recursive same) = false, want true" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
