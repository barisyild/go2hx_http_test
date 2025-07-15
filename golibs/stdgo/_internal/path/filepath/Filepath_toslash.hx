package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function toSlash(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L232"
        if (true) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L233"
            return _path?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L235"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_path?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
    }
