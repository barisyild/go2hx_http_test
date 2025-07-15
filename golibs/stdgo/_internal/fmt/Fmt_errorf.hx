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
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrapErrs = true;
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L25"
        _p._doPrintf(_format?.__copy__(), _a);
        var _s = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L28"
        {
            final __value__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                _err = stdgo._internal.errors.Errors_new_.new_(_s?.__copy__());
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _w = (stdgo.Go.setRef(({ _msg : _s?.__copy__() } : stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_wraperrordott_wraperror.__type__stdgodot_internaldotfmtdotFmt_t_wraperrordotT_wrapError })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>);
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_a[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs[(0 : stdgo.GoInt)] : stdgo.GoInt)], _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError) : stdgo.Error), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    };
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._0;
                };
                _err = stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_wraperrordott_wraperror.__type__stdgodot_internaldotfmtdotFmt_t_wraperrordotT_wrapError }));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L36"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reordered) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L37"
                    stdgo._internal.sort.Sort_ints.ints((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs);
                };
                var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
                //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L40"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs != null) for (_i => _argNum in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L41"
                    if (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == _argNum) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L42"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L44"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_a[(_argNum : stdgo.GoInt)], _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError) : stdgo.Error), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _errs = (_errs.__append__(_e) : stdgo.Slice<stdgo.Error>);
                        };
                    };
                };
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors(_s?.__copy__(), _errs) : stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_wraperrorsdott_wraperrors.__type__stdgodot_internaldotfmtdotFmt_t_wraperrorsdotT_wrapErrors })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_wraperrorsdott_wraperrors.__type__stdgodot_internaldotfmtdotFmt_t_wraperrorsdotT_wrapErrors }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L50"
        _p._free();
        //"file:///Users/o/.go/go1.21.3/src/fmt/errors.go#L51"
        return _err;
    }
