package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension) @:using(stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : stdgo._internal.io.fs.Fs_fileinfo.FileInfo = (null : stdgo._internal.io.fs.Fs_fileinfo.FileInfo);
    public function new(?_fileInfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fileInfo", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_fileinfodotfileinfo.__type__stdgodot_internaldotiodotfsdotFs_fileinfodotFileInfo }, optional : false }])));
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
