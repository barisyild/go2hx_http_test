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
function formatString(_state:stdgo._internal.fmt.Fmt_state.State, _verb:stdgo.GoInt32):stdgo.GoString {
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        var _b = ((_tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((37 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L84"
        if ((" +-#0" : stdgo.GoString) != null) for (__0 => _c in (" +-#0" : stdgo.GoString)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L85"
            if (_state.flag((_c : stdgo.GoInt))) {
                _b = (_b.__append__((_c : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L89"
        {
            var __tmp__ = _state.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_w : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L92"
        {
            var __tmp__ = _state.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = (_b.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_p : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        _b = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_b, _verb);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L97"
        return (_b : stdgo.GoString)?.__copy__();
    }
