package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_x25519Curve_asInterface) class T_x25519Curve_static_extension {
    @:keep
    @:tdfield
    static public function newPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        trace("funclit");
        throw "not implemented: newPublicKey";
    }
    @:keep
    @:tdfield
    static public function newPrivateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        trace("funclit");
        throw "not implemented: newPrivateKey";
    }
    @:keep
    @:tdfield
    static public function generateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        trace("funclit");
        throw "not implemented: generateKey";
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_x25519curve.T_x25519Curve> = _c;
        trace("funclit");
        throw "not implemented: string";
    }
}
