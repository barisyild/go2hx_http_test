package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep class T_ctrAble_static_extension {
    @:interfacetypeffun
    static public function newCTR(t:stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_stream.Stream return t.newCTR(_iv);
}
