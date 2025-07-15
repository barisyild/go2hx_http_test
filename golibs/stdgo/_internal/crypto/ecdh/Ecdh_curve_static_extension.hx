package stdgo._internal.crypto.ecdh;
@:keep class Curve_static_extension {
    @:interfacetypeffun
    static public function newPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } return t.newPublicKey(_key);
    @:interfacetypeffun
    static public function newPrivateKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return t.newPrivateKey(_key);
    @:interfacetypeffun
    static public function generateKey(t:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } return t.generateKey(_rand);
}
