package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.InnerInt_asInterface) class InnerInt_static_extension {
    @:keep
    @:tdfield
    static public function m( _i:stdgo.Ref<_internal.reflect_test.Reflect_test_innerint.InnerInt>):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<_internal.reflect_test.Reflect_test_innerint.InnerInt> = _i;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3306"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x;
    }
}
