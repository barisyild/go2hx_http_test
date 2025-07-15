package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.T_myint_asInterface) class T_myint_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function _inc( _i:stdgo.Pointer<_internal.reflect_test.Reflect_test_t_myint.T_myint>):Void {
        _i.value = (_i.value + (1i64 : _internal.reflect_test.Reflect_test_t_myint.T_myint) : _internal.reflect_test.Reflect_test_t_myint.T_myint);
    }
}
