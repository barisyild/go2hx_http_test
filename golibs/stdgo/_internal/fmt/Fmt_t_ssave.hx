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
@:structInit @:using(stdgo._internal.fmt.Fmt_t_ssave_static_extension.T_ssave_static_extension) @:using(stdgo._internal.fmt.Fmt_t_ssave_static_extension.T_ssave_static_extension) class T_ssave {
    public var _validSave : Bool = false;
    public var _nlIsEnd : Bool = false;
    public var _nlIsSpace : Bool = false;
    public var _argLimit : stdgo.GoInt = 0;
    public var _limit : stdgo.GoInt = 0;
    public var _maxWid : stdgo.GoInt = 0;
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:stdgo.GoInt, ?_limit:stdgo.GoInt, ?_maxWid:stdgo.GoInt) {
        if (_validSave != null) this._validSave = _validSave;
        if (_nlIsEnd != null) this._nlIsEnd = _nlIsEnd;
        if (_nlIsSpace != null) this._nlIsSpace = _nlIsSpace;
        if (_argLimit != null) this._argLimit = _argLimit;
        if (_limit != null) this._limit = _limit;
        if (_maxWid != null) this._maxWid = _maxWid;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_validSave", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_nlIsEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_nlIsSpace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_argLimit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_limit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_maxWid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    }
}
