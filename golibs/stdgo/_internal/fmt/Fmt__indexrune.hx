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
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L469"
        if (_s != null) for (_i => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L470"
            if (_c == (_r)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L471"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L474"
        return (-1 : stdgo.GoInt);
    }
