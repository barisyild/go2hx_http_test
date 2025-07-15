package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function dir(_path:stdgo.GoString):stdgo.GoString {
        var _vol = @:assignType (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = @:assignType ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L665"
        while (((_i >= (_vol.length) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L666"
            _i--;
        };
        var _dir = @:assignType (stdgo._internal.path.filepath.Filepath_clean.clean((_path.__slice__((_vol.length), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L669"
        if (((_dir == ("." : stdgo.GoString)) && ((_vol.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L671"
            return _vol?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L673"
        return (_vol + _dir?.__copy__() : stdgo.GoString)?.__copy__();
    }
