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
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L1058"
        {
            var _e = @:assignType ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L1059"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_e, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_scanerrordott_scanerror.__type__stdgodot_internaldotfmtdotFmt_t_scanerrordotT_scanError) : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : true };
                    } catch(__exception__) {
                        { _0 : ({} : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _se._err;
                            var x = (_errp : stdgo.Error);
                            x.error = __tmp__.error;
                        };
                    } else {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_e, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError) : stdgo.Error), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _eof = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (({
                            final __t__ = _eof;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) == ({
                            final __t__ = stdgo._internal.io.Io_eof.eOF;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) : Bool)) {
                            {
                                var __tmp__ = _eof;
                                var x = (_errp : stdgo.Error);
                                x.error = __tmp__.error;
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L1064"
                            throw ({
                                final __t__ = _e;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            });
                        };
                    };
                };
            };
        };
    }
