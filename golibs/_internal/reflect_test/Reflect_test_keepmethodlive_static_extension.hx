package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.KeepMethodLive_asInterface) class KeepMethodLive_static_extension {
    @:keep
    @:tdfield
    static public function method2( _k:_internal.reflect_test.Reflect_test_keepmethodlive.KeepMethodLive, _i:stdgo.GoInt):Void {
        @:recv var _k:_internal.reflect_test.Reflect_test_keepmethodlive.KeepMethodLive = _k?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6845"
        _internal.reflect_test.Reflect_test__clobber._clobber();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6846"
        (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_k, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_keepmethodlivedotkeepmethodlive.__type___internaldotreflect_testdotReflect_test_keepmethodlivedotKeepMethodLive), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_keepmethodlivedotkeepmethodlive.__type___internaldotreflect_testdotReflect_test_keepmethodlivedotKeepMethodLive))).methodByName(("Method1" : stdgo.GoString)).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> Void)(_i);
    }
    @:keep
    @:tdfield
    static public function method1( _k:_internal.reflect_test.Reflect_test_keepmethodlive.KeepMethodLive, _i:stdgo.GoInt):Void {
        @:recv var _k:_internal.reflect_test.Reflect_test_keepmethodlive.KeepMethodLive = _k?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6838"
        _internal.reflect_test.Reflect_test__clobber._clobber();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6839"
        if ((_i > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6840"
            (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_k, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_keepmethodlivedotkeepmethodlive.__type___internaldotreflect_testdotReflect_test_keepmethodlivedotKeepMethodLive), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_keepmethodlivedotkeepmethodlive.__type___internaldotreflect_testdotReflect_test_keepmethodlivedotKeepMethodLive))).methodByName(("Method2" : stdgo.GoString)).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt -> Void)((_i - (1 : stdgo.GoInt) : stdgo.GoInt));
        };
    }
}
