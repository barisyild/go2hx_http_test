package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.io.fs.Fs_direntry.DirEntry {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L77"
        if (_info == null) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L78"
            return (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir.go#L80"
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_t_dirinfodott_dirinfo.__type__stdgodot_internaldotiodotfsdotFs_t_dirinfodotT_dirInfo);
    }
