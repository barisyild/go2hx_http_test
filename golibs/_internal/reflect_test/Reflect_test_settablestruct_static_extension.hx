package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.SettableStruct_asInterface) class SettableStruct_static_extension {
    @:keep
    @:tdfield
    static public function set( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_settablestruct.SettableStruct>, _v:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_settablestruct.SettableStruct> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).settableField = _v;
    }
}
