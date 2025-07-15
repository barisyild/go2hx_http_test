package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function curve( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        trace("funclit");
        throw "not implemented: curve";
    }
    @:keep
    @:tdfield
    static public function equal( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        trace("funclit");
        throw "not implemented: equal";
    }
    @:keep
    @:tdfield
    static public function bytes( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        trace("funclit");
        throw "not implemented: bytes";
    }
}
