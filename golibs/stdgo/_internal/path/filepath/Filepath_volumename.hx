package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function volumeName(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L681"
        return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash((_path.__slice__(0, stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path?.__copy__())) : stdgo.GoString)?.__copy__())?.__copy__();
    }
