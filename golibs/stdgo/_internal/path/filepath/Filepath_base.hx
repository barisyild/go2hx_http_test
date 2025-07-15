package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function base(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L632"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L633"
            return ("." : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L636"
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _path = (_path.__slice__((stdgo._internal.path.filepath.Filepath_volumename.volumeName(_path?.__copy__()).length)) : stdgo.GoString)?.__copy__();
        var _i = @:assignType ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L643"
        while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L644"
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L646"
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L650"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L651"
            return ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L653"
        return _path?.__copy__();
    }
