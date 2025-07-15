package stdgo._internal.crypto.ecdh;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension) @:using(stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new PrivateKey();
    }
}
