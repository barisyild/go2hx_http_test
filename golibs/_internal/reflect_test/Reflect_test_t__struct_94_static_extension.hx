package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.T__struct_94_asInterface) class T__struct_94_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:_internal.reflect_test.Reflect_test_t__struct_94.T__struct_94, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:_internal.reflect_test.Reflect_test_t__struct_94.T__struct_94):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:_internal.reflect_test.Reflect_test_t__struct_94.T__struct_94):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:_internal.reflect_test.Reflect_test_t__struct_94.T__struct_94):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:_internal.reflect_test.Reflect_test_t__struct_94.T__struct_94):Void return @:check32 __self__.mutex.lock();
}
