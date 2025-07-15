package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.io.fs.Fs.T_statDirEntry_asInterface) class T_statDirEntry_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry> = _d;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L140"
        return stdgo._internal.io.fs.Fs_formatdirentry.formatDirEntry(stdgo.Go.asInterface(_d, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_t_statdirentrydott_statdirentry.__type__stdgodot_internaldotiodotfsdotFs_t_statdirentrydotT_statDirEntry })))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry> = _d;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L137"
        return { _0 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry> = _d;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L136"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info.mode().type();
    }
    @:keep
    @:tdfield
    static public function isDir( _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry> = _d;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L135"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info.isDir();
    }
    @:keep
    @:tdfield
    static public function name( _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry>):stdgo.GoString {
        @:recv var _d:stdgo.Ref<stdgo._internal.io.fs.Fs_t_statdirentry.T_statDirEntry> = _d;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L134"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info.name()?.__copy__();
    }
}
