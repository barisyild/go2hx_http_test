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
function fprintln(_w:stdgo._internal.io.Io_writer.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L304"
        _p._doPrintln(_a);
        {
            var __tmp__ = _w.write((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L306"
        _p._free();
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L307"
        return { _0 : _n, _1 : _err };
    }
