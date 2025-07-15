package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function fromSlash(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L242"
        if (true) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L243"
            return _path?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L245"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_path?.__copy__(), ("/" : stdgo.GoString), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
    }
