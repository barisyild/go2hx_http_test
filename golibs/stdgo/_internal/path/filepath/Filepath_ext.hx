package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function ext(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L286"
        {
            var _i = @:assignType ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_i >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_i : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L287"
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L288"
                    return (_path.__slice__(_i) : stdgo.GoString).__copy__();
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L291"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
