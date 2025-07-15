package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function glob(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L34"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.io.fs.Fs__globwithlimit._globWithLimit(_fsys, _pattern?.__copy__(), (0 : stdgo.GoInt));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
