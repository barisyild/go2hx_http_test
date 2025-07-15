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
@:structInit @:using(stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension) @:using(stdgo._internal.fmt.Fmt_t_ss_static_extension.T_ss_static_extension) class T_ss {
    public var _rs : stdgo._internal.io.Io_runescanner.RuneScanner = (null : stdgo._internal.io.Io_runescanner.RuneScanner);
    public var _buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer = (new stdgo._internal.fmt.Fmt_t_buffer.T_buffer(0, 0) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
    public var _count : stdgo.GoInt = 0;
    public var _atEOF : Bool = false;
    @:embedded
    public var _ssave : stdgo._internal.fmt.Fmt_t_ssave.T_ssave = ({} : stdgo._internal.fmt.Fmt_t_ssave.T_ssave);
    public function new(?_rs:stdgo._internal.io.Io_runescanner.RuneScanner, ?_buf:stdgo._internal.fmt.Fmt_t_buffer.T_buffer, ?_count:stdgo.GoInt, ?_atEOF:Bool, ?_ssave:stdgo._internal.fmt.Fmt_t_ssave.T_ssave) {
        if (_rs != null) this._rs = _rs;
        if (_buf != null) this._buf = _buf;
        if (_count != null) this._count = _count;
        if (_atEOF != null) this._atEOF = _atEOF;
        if (_ssave != null) this._ssave = _ssave;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_runescannerdotrunescanner.__type__stdgodot_internaldotiodotIo_runescannerdotRuneScanner }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_bufferdott_buffer.__type__stdgodot_internaldotfmtdotFmt_t_bufferdotT_buffer }, optional : false }, { name : "_count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_atEOF", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_ssave", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ssavedott_ssave.__type__stdgodot_internaldotfmtdotFmt_t_ssavedotT_ssave }, optional : false }])));
    public function __copy__() {
        return new T_ss(_rs, _buf, _count, _atEOF, _ssave);
    }
}
