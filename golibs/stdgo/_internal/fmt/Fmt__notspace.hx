package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function _notSpace(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L298"
        return !stdgo._internal.fmt.Fmt__isspace._isSpace(_r);
    }
