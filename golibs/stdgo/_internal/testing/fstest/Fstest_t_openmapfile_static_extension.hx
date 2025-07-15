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
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_openMapFile_asInterface) class T_openMapFile_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile> = _f;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L206"
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L207"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L210"
        if ((_n < (_b.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L211"
            return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L213"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seek( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile> = _f;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L190"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + (((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L198"
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L199"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("seek" : stdgo.GoString), path : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) };
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = _offset;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L202"
        return { _0 : _offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile> = _f;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L178"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset >= ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.length : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L179"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L181"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L182"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo._f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L186"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile> = _f;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L175"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function stat( _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile> = _f;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/mapfs.go#L173"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapFileInfo, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo })), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function type( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.type();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function name( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo.GoString return @:_5 __self__.name();
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function isDir( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):Bool return @:_5 __self__.isDir();
    @:embedded
    @:embeddededffieldsffun
    public static function info( __self__:stdgo._internal.testing.fstest.Fstest_t_openmapfile.T_openMapFile):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.info();
}
