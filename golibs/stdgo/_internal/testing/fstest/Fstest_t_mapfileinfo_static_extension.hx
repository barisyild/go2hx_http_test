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
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapFileInfo_asInterface) class T_mapFileInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L163"
        return stdgo._internal.io.fs.Fs_formatfileinfo.formatFileInfo(stdgo.Go.asInterface(_i, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L160"
        return { _0 : stdgo.Go.asInterface(_i, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sys( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.AnyInterface {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L159"
        return (@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sys;
    }
    @:keep
    @:tdfield
    static public function isDir( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L158"
        return ((@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mode & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode));
    }
    @:keep
    @:tdfield
    static public function modTime( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.time.Time_time.Time {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L157"
        return (@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).modTime?.__copy__();
    }
    @:keep
    @:tdfield
    static public function type( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L156"
        return (@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mode.type();
    }
    @:keep
    @:tdfield
    static public function mode( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L155"
        return (@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mode;
    }
    @:keep
    @:tdfield
    static public function size( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoInt64 {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L154"
        return ((@:checkr (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.length : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function name( _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = _i;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L153"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
}
