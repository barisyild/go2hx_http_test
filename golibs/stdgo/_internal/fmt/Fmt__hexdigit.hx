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
function _hexDigit(_d:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _digit = @:assignType (_d : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L885"
        {
            final __value__ = _digit;
            if (__value__ == ((48 : stdgo.GoInt)) || __value__ == ((49 : stdgo.GoInt)) || __value__ == ((50 : stdgo.GoInt)) || __value__ == ((51 : stdgo.GoInt)) || __value__ == ((52 : stdgo.GoInt)) || __value__ == ((53 : stdgo.GoInt)) || __value__ == ((54 : stdgo.GoInt)) || __value__ == ((55 : stdgo.GoInt)) || __value__ == ((56 : stdgo.GoInt)) || __value__ == ((57 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L887"
                return { _0 : (_digit - (48 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((97 : stdgo.GoInt)) || __value__ == ((98 : stdgo.GoInt)) || __value__ == ((99 : stdgo.GoInt)) || __value__ == ((100 : stdgo.GoInt)) || __value__ == ((101 : stdgo.GoInt)) || __value__ == ((102 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L889"
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (97 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            } else if (__value__ == ((65 : stdgo.GoInt)) || __value__ == ((66 : stdgo.GoInt)) || __value__ == ((67 : stdgo.GoInt)) || __value__ == ((68 : stdgo.GoInt)) || __value__ == ((69 : stdgo.GoInt)) || __value__ == ((70 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L891"
                return { _0 : (((10 : stdgo.GoInt) + _digit : stdgo.GoInt) - (65 : stdgo.GoInt) : stdgo.GoInt), _1 : true };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L893"
        return { _0 : (-1 : stdgo.GoInt), _1 : false };
    }
