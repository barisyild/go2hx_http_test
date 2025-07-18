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
@:keep class GoStringer_static_extension {
    @:interfacetypeffun
    static public function goString(t:stdgo._internal.fmt.Fmt_gostringer.GoStringer):stdgo.GoString return t.goString();
}
