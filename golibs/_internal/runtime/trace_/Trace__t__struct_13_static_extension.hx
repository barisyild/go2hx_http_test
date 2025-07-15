package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(_internal.runtime.trace_.Trace_.T__struct_13_asInterface) class T__struct_13_static_extension {
    @:embedded
    @:localembedfields
    public static function _unlockSlow( __self__:_internal.runtime.trace_.Trace__t__struct_13.T__struct_13, _0:stdgo.GoInt32):Void return @:check32 __self__.mutex._unlockSlow(_0);
    @:embedded
    @:localembedfields
    public static function _lockSlow( __self__:_internal.runtime.trace_.Trace__t__struct_13.T__struct_13):Void return @:check32 __self__.mutex._lockSlow();
    @:embedded
    @:localembedfields
    public static function unlock( __self__:_internal.runtime.trace_.Trace__t__struct_13.T__struct_13):Void return @:check32 __self__.mutex.unlock();
    @:embedded
    @:localembedfields
    public static function tryLock( __self__:_internal.runtime.trace_.Trace__t__struct_13.T__struct_13):Bool return @:check32 __self__.mutex.tryLock();
    @:embedded
    @:localembedfields
    public static function lock( __self__:_internal.runtime.trace_.Trace__t__struct_13.T__struct_13):Void return @:check32 __self__.mutex.lock();
}
