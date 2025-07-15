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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_openmapfile_static_extension.T_openMapFile_static_extension) @:using(stdgo._internal.testing.fstest.Fstest_t_openmapfile_static_extension.T_openMapFile_static_extension) class T_openMapFile {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo = ({} : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo);
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo, ?_offset:stdgo.GoInt64) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_mapFileInfo", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_t_mapfileinfodott_mapfileinfo.__type__stdgodot_internaldottestingdotfstestdotFstest_t_mapfileinfodotT_mapFileInfo }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public var info(get, never) : () -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_info():() -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:check32 this._mapFileInfo.info;
    public var isDir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isDir():() -> Bool return @:check32 this._mapFileInfo.isDir;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_time.Time;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_time.Time return @:check32 this._mapFileInfo.modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_filemode.FileMode return @:check32 this._mapFileInfo.mode;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check32 this._mapFileInfo.name;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this._mapFileInfo.size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this._mapFileInfo.string;
    public var sys(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_sys():() -> stdgo.AnyInterface return @:check32 this._mapFileInfo.sys;
    public var type(get, never) : () -> stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.io.fs.Fs_filemode.FileMode return @:check32 this._mapFileInfo.type;
    public function __copy__() {
        return new T_openMapFile(_path, _mapFileInfo, _offset);
    }
}
