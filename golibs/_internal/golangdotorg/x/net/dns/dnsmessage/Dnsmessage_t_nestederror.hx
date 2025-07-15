package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror_static_extension.T_nestedError_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror_static_extension.T_nestedError_static_extension) class T_nestedError {
    public var _s : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_s:stdgo.GoString, ?_err:stdgo.Error) {
        if (_s != null) this._s = _s;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_nestedError(_s, _err);
    }
}
