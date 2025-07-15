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
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L321"
        _p._doPrintln(_a);
        var _s = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L323"
        _p._free();
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L324"
        return _s?.__copy__();
    }
