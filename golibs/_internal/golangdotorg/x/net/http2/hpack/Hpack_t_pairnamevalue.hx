package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue_static_extension.T_pairNameValue_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue_static_extension.T_pairNameValue_static_extension) class T_pairNameValue {
    public var _name : stdgo.GoString = "";
    public var _value : stdgo.GoString = "";
    public function new(?_name:stdgo.GoString, ?_value:stdgo.GoString) {
        if (_name != null) this._name = _name;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_pairNameValue(_name, _value);
    }
}
