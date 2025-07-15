package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
@:structInit @:using(stdgo._internal.errors.Errors_t_errorstring_static_extension.T_errorString_static_extension) @:using(stdgo._internal.errors.Errors_t_errorstring_static_extension.T_errorString_static_extension) class T_errorString {
    public var _s : stdgo.GoString = "";
    public function new(?_s:stdgo.GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_errorString(_s);
    }
}
