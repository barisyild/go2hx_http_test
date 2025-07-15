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
@:structInit @:using(stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension) @:using(stdgo._internal.fmt.Fmt_t_fmt_static_extension.T_fmt_static_extension) class T_fmt {
    public var _buf : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer> = (null : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>);
    @:embedded
    public var _fmtFlags : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags = ({} : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags);
    public var _wid : stdgo.GoInt = 0;
    public var _prec : stdgo.GoInt = 0;
    public var _intbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(68, 68).__setNumber32__();
    public function new(?_buf:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>, ?_fmtFlags:stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags, ?_wid:stdgo.GoInt, ?_prec:stdgo.GoInt, ?_intbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_buf != null) this._buf = _buf;
        if (_fmtFlags != null) this._fmtFlags = _fmtFlags;
        if (_wid != null) this._wid = _wid;
        if (_prec != null) this._prec = _prec;
        if (_intbuf != null) this._intbuf = _intbuf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_bufferdott_buffer.__type__stdgodot_internaldotfmtdotFmt_t_bufferdotT_buffer }) }, optional : false }, { name : "_fmtFlags", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_fmtflagsdott_fmtflags.__type__stdgodot_internaldotfmtdotFmt_t_fmtflagsdotT_fmtFlags }, optional : false }, { name : "_wid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_prec", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_intbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 68) }, optional : false }])));
    public function __copy__() {
        return new T_fmt(_buf, _fmtFlags, _wid, _prec, _intbuf);
    }
}
