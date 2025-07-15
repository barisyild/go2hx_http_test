package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L243"
        return stdgo._internal.path.filepath.Filepath__globwithlimit._globWithLimit(_pattern?.__copy__(), (0 : stdgo.GoInt));
    }
