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
@:structInit @:using(stdgo._internal.fmt.Fmt_t_wraperrors_static_extension.T_wrapErrors_static_extension) @:using(stdgo._internal.fmt.Fmt_t_wraperrors_static_extension.T_wrapErrors_static_extension) class T_wrapErrors {
    public var _msg : stdgo.GoString = "";
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_msg:stdgo.GoString, ?_errs:stdgo.Slice<stdgo.Error>) {
        if (_msg != null) this._msg = _msg;
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_msg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_errs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) }, optional : false }])));
    public function __copy__() {
        return new T_wrapErrors(_msg, _errs);
    }
}
