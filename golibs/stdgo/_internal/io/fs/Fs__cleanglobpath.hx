package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _cleanGlobPath(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L87"
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L89"
                return ("." : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L91"
                return (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
    }
