package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.io.fs.Fs.T_dirInfo_asInterface) class T_dirInfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo):stdgo.GoString {
        @:recv var _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo = _di?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L71"
        return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(stdgo.Go.asInterface(_di, _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_t_dirinfodott_dirinfo.__type__stdgodot_internaldotiodotfsdotFs_t_dirinfodotT_dirInfo))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function name( _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo):stdgo.GoString {
        @:recv var _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo = _di?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L67"
        return _di._fileInfo.name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo = _di?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L63"
        return { _0 : _di._fileInfo, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo = _di?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L59"
        return _di._fileInfo.mode().type();
    }
    @:keep
    @:tdfield
    static public function isDir( _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo):Bool {
        @:recv var _di:stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo = _di?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L55"
        return _di._fileInfo.isDir();
    }
}
