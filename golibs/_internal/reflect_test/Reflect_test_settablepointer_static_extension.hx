package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.SettablePointer_asInterface) class SettablePointer_static_extension {
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_settablepointer.SettablePointer>, _v:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_settablepointer.SettablePointer> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).settableField.value = _v;
    }
}
