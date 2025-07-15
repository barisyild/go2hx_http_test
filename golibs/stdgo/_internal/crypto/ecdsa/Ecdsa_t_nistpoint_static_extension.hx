package stdgo._internal.crypto.ecdsa;
@:keep class T_nistPoint_static_extension {
    @:interfacetypeffun
    static public function scalarBaseMult<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; } return t.scalarBaseMult(_0);
    @:interfacetypeffun
    static public function scalarMult<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>, _0:T_, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; } return t.scalarMult(_0, _1);
    @:interfacetypeffun
    static public function add<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>, _0:T_, _1:T_):T_ return t.add(_0, _1);
    @:interfacetypeffun
    static public function setBytes<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; } return t.setBytes(_0);
    @:interfacetypeffun
    static public function bytesX<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.bytesX();
    @:interfacetypeffun
    static public function bytes<T_>(t:stdgo._internal.crypto.ecdsa.Ecdsa_t_nistpoint.T_nistPoint<T_>):stdgo.Slice<stdgo.GoUInt8> return t.bytes();
}
