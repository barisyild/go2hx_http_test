package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
@:structInit @:using(_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305_static_extension.T_chacha20poly1305_static_extension) @:using(_internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_t_chacha20poly1305_static_extension.T_chacha20poly1305_static_extension) class T_chacha20poly1305 {
    public var _key : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
    public function new(?_key:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_key != null) this._key = _key;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) }, optional : false }])));
    public function __copy__() {
        return new T_chacha20poly1305(_key);
    }
}
