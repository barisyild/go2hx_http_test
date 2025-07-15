package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension) @:using(stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension) class T_gcm {
    public var _cipher : stdgo._internal.crypto.cipher.Cipher_block.Block = (null : stdgo._internal.crypto.cipher.Cipher_block.Block);
    public var _nonceSize : stdgo.GoInt = 0;
    public var _tagSize : stdgo.GoInt = 0;
    public var _productTable : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement> = new stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>(16, 16, ...[for (i in 0 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement)]);
    public function new(?_cipher:stdgo._internal.crypto.cipher.Cipher_block.Block, ?_nonceSize:stdgo.GoInt, ?_tagSize:stdgo.GoInt, ?_productTable:stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>) {
        if (_cipher != null) this._cipher = _cipher;
        if (_nonceSize != null) this._nonceSize = _nonceSize;
        if (_tagSize != null) this._tagSize = _tagSize;
        if (_productTable != null) this._productTable = _productTable;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cipher", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockdotblock.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockdotBlock }, optional : false }, { name : "_nonceSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_tagSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_productTable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_t_gcmfieldelementdott_gcmfieldelement.__type__stdgodot_internaldotcryptodotcipherdotCipher_t_gcmfieldelementdotT_gcmFieldElement }, 16) }, optional : false }])));
    public function __copy__() {
        return new T_gcm(_cipher, _nonceSize, _tagSize, _productTable);
    }
}
