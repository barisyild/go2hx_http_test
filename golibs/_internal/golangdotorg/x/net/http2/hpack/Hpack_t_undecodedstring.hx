package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring_static_extension.T_undecodedString_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring_static_extension.T_undecodedString_static_extension) class T_undecodedString {
    public var _isHuff : Bool = false;
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_isHuff:Bool, ?_b:stdgo.Slice<stdgo.GoUInt8>) {
        if (_isHuff != null) this._isHuff = _isHuff;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_isHuff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_undecodedString(_isHuff, _b);
    }
}
