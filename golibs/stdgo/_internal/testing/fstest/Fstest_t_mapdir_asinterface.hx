package stdgo._internal.testing.fstest;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
class T_mapDir_asInterface {
    @:keep
    public dynamic function readDir(_count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_0 __self__.value.readDir(_count);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function stat():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.stat();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function type():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.type();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sys():stdgo.AnyInterface return @:_0 __self__.value.sys();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function mode():stdgo._internal.io.fs.Fs_filemode.FileMode return @:_0 __self__.value.mode();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function modTime():stdgo._internal.time.Time_time.Time return @:_0 __self__.value.modTime();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isDir():Bool return @:_0 __self__.value.isDir();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function info():{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_0 __self__.value.info();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.fstest.Fstest_t_mapdirpointer.T_mapDirPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
