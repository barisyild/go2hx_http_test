package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _errInvalid():stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/fs.go#L144"
        return stdgo._internal.internal.oserror.Oserror_errinvalid.errInvalid;
    }
