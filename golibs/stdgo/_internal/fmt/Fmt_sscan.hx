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
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L100"
        return stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader)), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_stringreaderdott_stringreader.__type__stdgodot_internaldotfmtdotFmt_t_stringreaderdotT_stringReader })), ...(_a : Array<stdgo.AnyInterface>));
    }
