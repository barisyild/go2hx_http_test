package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.path.filepath.Filepath_t_statdirentry_static_extension.T_statDirEntry_static_extension) @:using(stdgo._internal.path.filepath.Filepath_t_statdirentry_static_extension.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs_fileinfo.FileInfo = (null : stdgo._internal.io.fs.Fs_fileinfo.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_info", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_fileinfodotfileinfo.__type__stdgodot_internaldotiodotfsdotFs_fileinfodotFileInfo }, optional : false }])));
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
