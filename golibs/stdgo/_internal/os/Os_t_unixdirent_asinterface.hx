package stdgo._internal.os;
class T_unixDirent_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.info();
    @:keep
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.type();
    @:keep
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:keep
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.Os_t_unixdirentpointer.T_unixDirentPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
