package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class StatFS_static_extension {
    @:interfacetypeffun
    static public function stat(t:stdgo._internal.io.fs.Fs_statfs.StatFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return t.stat(_name);
}
