package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _hasMeta(_path:stdgo.GoString):Bool {
        var _magicChars = @:assignType (("*?[" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L365"
        if (true) {
            _magicChars = ("*?[\\" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L368"
        return stdgo._internal.strings.Strings_containsany.containsAny(_path?.__copy__(), _magicChars?.__copy__());
    }
