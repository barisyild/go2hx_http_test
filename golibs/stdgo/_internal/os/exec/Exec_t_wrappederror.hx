package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:structInit @:using(stdgo._internal.os.exec.Exec_t_wrappederror_static_extension.T_wrappedError_static_extension) @:using(stdgo._internal.os.exec.Exec_t_wrappederror_static_extension.T_wrappedError_static_extension) class T_wrappedError {
    public var _prefix : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_prefix:stdgo.GoString, ?_err:stdgo.Error) {
        if (_prefix != null) this._prefix = _prefix;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_prefix", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_wrappedError(_prefix, _err);
    }
}
