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
function _newScanState(_r:stdgo._internal.io.Io_reader.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{ var _0 : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>; var _1 : stdgo._internal.fmt.Fmt_t_ssave.T_ssave; } {
        var _s = (null : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>), _old = ({} : stdgo._internal.fmt.Fmt_t_ssave.T_ssave);
        _s = (stdgo.Go.typeAssert(stdgo._internal.fmt.Fmt__ssfree._ssFree.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ssdott_ss.__type__stdgodot_internaldotfmtdotFmt_t_ssdotT_ss })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_ss.T_ss>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L385"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_runescannerdotrunescanner.__type__stdgodot_internaldotiodotIo_runescannerdotRuneScanner) : stdgo._internal.io.Io_runescanner.RuneScanner), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_runescanner.RuneScanner), _1 : false };
            }, _rs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rs = _rs;
            } else {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rs = stdgo.Go.asInterface((stdgo.Go.setRef(({ _reader : _r, _peekRune : (-1 : stdgo.GoInt32) } : stdgo._internal.fmt.Fmt_t_readrune.T_readRune), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_readrunedott_readrune.__type__stdgodot_internaldotfmtdotFmt_t_readrunedotT_readRune })) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_readrune.T_readRune>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_readrunedott_readrune.__type__stdgodot_internaldotfmtdotFmt_t_readrunedotT_readRune }));
            };
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._nlIsSpace = _nlIsSpace;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._nlIsEnd = _nlIsEnd;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._atEOF = false;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._limit = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._argLimit = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._maxWid = (1073741824 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ssave._validSave = true;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L398"
        return { _0 : _s, _1 : _old };
    }
