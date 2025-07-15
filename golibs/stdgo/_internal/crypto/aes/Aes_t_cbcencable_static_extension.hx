package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep class T_cbcEncAble_static_extension {
    @:interfacetypeffun
    static public function newCBCEncrypter(t:stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble, _iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode return t.newCBCEncrypter(_iv);
}
