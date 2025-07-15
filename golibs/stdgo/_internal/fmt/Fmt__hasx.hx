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
function _hasX(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L765"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L766"
                if (((_s[(_i : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L767"
                    return true;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L770"
        return false;
    }
