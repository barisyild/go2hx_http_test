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
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_mapDir_asInterface) class T_mapDir_static_extension {
    @:keep
    @:tdfield
    static public function readDir( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        var _n = (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entry.length) - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L232"
        if (((_n == (0 : stdgo.GoInt)) && (_count > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L233"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L235"
        if (((_count > (0 : stdgo.GoInt) : Bool) && (_n > _count : Bool) : Bool)) {
            _n = _count;
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L239"
        if (_list != null) for (_i => _ in _list) {
            _list[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entry[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + _i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo }));
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + (_n) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L243"
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L227"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) };
    }
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L225"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function stat( _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir> = _d;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L224"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function isDir( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):Bool return @:_5 __self__.isDir();
    @:embedded
    @:embeddededffieldsffun
    public static function info( __self__:stdgo._internal.testing.fstest.Fstest_t_mapdir.T_mapDir):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.info();
}
