package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _sameWord(_a:stdgo.GoString, _b:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path_unix.go#L56"
        return _a == (_b);
    }
