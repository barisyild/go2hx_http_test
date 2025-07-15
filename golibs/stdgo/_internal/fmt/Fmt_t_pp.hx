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
@:structInit @:using(stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension) @:using(stdgo._internal.fmt.Fmt_t_pp_static_extension.T_pp_static_extension) class T_pp {
    public var _buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer = (new stdgo._internal.fmt.Fmt_t_buffer.T_buffer(0, 0) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _value : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var _fmt : stdgo._internal.fmt.Fmt_t_fmt.T_fmt = ({} : stdgo._internal.fmt.Fmt_t_fmt.T_fmt);
    public var _reordered : Bool = false;
    public var _goodArgNum : Bool = false;
    public var _panicking : Bool = false;
    public var _erroring : Bool = false;
    public var _wrapErrs : Bool = false;
    public var _wrappedErrs : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_buf:stdgo._internal.fmt.Fmt_t_buffer.T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect_value.Value, ?_fmt:stdgo._internal.fmt.Fmt_t_fmt.T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:stdgo.Slice<stdgo.GoInt>) {
        if (_buf != null) this._buf = _buf;
        if (_arg != null) this._arg = _arg;
        if (_value != null) this._value = _value;
        if (_fmt != null) this._fmt = _fmt;
        if (_reordered != null) this._reordered = _reordered;
        if (_goodArgNum != null) this._goodArgNum = _goodArgNum;
        if (_panicking != null) this._panicking = _panicking;
        if (_erroring != null) this._erroring = _erroring;
        if (_wrapErrs != null) this._wrapErrs = _wrapErrs;
        if (_wrappedErrs != null) this._wrappedErrs = _wrappedErrs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_buf", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_bufferdott_buffer.__type__stdgodot_internaldotfmtdotFmt_t_bufferdotT_buffer }, optional : false }, { name : "_arg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }, optional : false }, { name : "_fmt", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_fmtdott_fmt.__type__stdgodot_internaldotfmtdotFmt_t_fmtdotT_fmt }, optional : false }, { name : "_reordered", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_goodArgNum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_panicking", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_erroring", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_wrapErrs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_wrappedErrs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, _wrappedErrs);
    }
}
