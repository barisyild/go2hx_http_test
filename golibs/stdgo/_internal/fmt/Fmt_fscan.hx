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
function fscan(_r:stdgo._internal.io.Io_reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.fmt.Fmt__newscanstate._newScanState(_r, true, false), _s:stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss> = __tmp__._0, _old:stdgo._internal.fmt.Fmt_t_ssave.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L124"
        _s._free(_old?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L125"
        return { _0 : _n, _1 : _err };
    }
