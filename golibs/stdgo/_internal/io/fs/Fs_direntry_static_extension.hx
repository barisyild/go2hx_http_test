package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class DirEntry_static_extension {
    @:interfacetypeffun
    static public function info(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return t.info();
    @:interfacetypeffun
    static public function type(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo._internal.io.fs.Fs_filemode.FileMode return t.type();
    @:interfacetypeffun
    static public function isDir(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):Bool return t.isDir();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.GoString return t.name();
}
