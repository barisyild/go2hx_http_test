package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension) @:using(stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension) class T_subFS {
    public var _fsys : stdgo._internal.io.fs.Fs_fs.FS = (null : stdgo._internal.io.fs.Fs_fs.FS);
    public var _dir : stdgo.GoString = "";
    public function new(?_fsys:stdgo._internal.io.fs.Fs_fs.FS, ?_dir:stdgo.GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fsys", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_fsdotfs.__type__stdgodot_internaldotiodotfsdotFs_fsdotFS }, optional : false }, { name : "_dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
