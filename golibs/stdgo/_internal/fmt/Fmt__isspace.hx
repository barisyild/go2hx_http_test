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
function _isSpace(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L281"
        if ((_r >= (65536 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L282"
            return false;
        };
        var _rx = @:assignType (_r : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L285"
        if (stdgo._internal.fmt.Fmt__space._space != null) for (__0 => _rng in stdgo._internal.fmt.Fmt__space._space) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L286"
            if ((_rx < _rng[(0 : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L287"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L289"
            if ((_rx <= _rng[(1 : stdgo.GoInt)] : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L290"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L293"
        return false;
    }
