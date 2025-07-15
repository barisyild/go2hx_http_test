package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
@:structInit @:using(stdgo._internal.errors.Errors_t_joinerror_static_extension.T_joinError_static_extension) @:using(stdgo._internal.errors.Errors_t_joinerror_static_extension.T_joinError_static_extension) class T_joinError {
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_errs:stdgo.Slice<stdgo.Error>) {
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_errs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) }, optional : false }])));
    public function __copy__() {
        return new T_joinError(_errs);
    }
}
