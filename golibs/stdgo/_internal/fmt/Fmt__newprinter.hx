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
function _newPrinter():stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> {
        var _p = (stdgo.Go.typeAssert(stdgo._internal.fmt.Fmt__ppfree._ppFree.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ppdott_pp.__type__stdgodot_internaldotfmtdotFmt_t_ppdotT_pp })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._panicking = false;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._erroring = false;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrapErrs = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L156"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._init((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_bufferdott_buffer.__type__stdgodot_internaldotfmtdotFmt_t_bufferdotT_buffer })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L157"
        return _p;
    }
