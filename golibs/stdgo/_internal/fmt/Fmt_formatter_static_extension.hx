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
@:keep class Formatter_static_extension {
    @:interfacetypeffun
    static public function format(t:stdgo._internal.fmt.Fmt_formatter.Formatter, _f:stdgo._internal.fmt.Fmt_state.State, _verb:stdgo.GoInt32):Void t.format(_f, _verb);
}
