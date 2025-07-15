package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
@:keep @:allow(stdgo._internal.os.signal.Signal.T__struct_168_asInterface) class T__struct_168_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:stdgo._internal.os.signal.Signal_t__struct_168.T__struct_168, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:stdgo._internal.os.signal.Signal_t__struct_168.T__struct_168):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:stdgo._internal.os.signal.Signal_t__struct_168.T__struct_168):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:stdgo._internal.os.signal.Signal_t__struct_168.T__struct_168):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:stdgo._internal.os.signal.Signal_t__struct_168.T__struct_168):Void return @:check32 __self__.mutex.lock();
}
