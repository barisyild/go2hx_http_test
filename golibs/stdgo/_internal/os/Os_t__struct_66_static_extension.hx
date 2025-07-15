package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.T__struct_66_asInterface) class T__struct_66_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.os.Os_t__struct_66.T__struct_66, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.os.Os_t__struct_66.T__struct_66):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.os.Os_t__struct_66.T__struct_66):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.os.Os_t__struct_66.T__struct_66):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.os.Os_t__struct_66.T__struct_66):Void return @:check32 __self__.mutex.lock();
}
