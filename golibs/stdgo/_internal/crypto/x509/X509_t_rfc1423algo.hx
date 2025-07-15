package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_rfc1423algo_static_extension.T_rfc1423Algo_static_extension) @:using(stdgo._internal.crypto.x509.X509_t_rfc1423algo_static_extension.T_rfc1423Algo_static_extension) class T_rfc1423Algo {
    public var _cipher : stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher);
    public var _name : stdgo.GoString = "";
    public var _cipherFunc : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } = null;
    public var _keySize : stdgo.GoInt = 0;
    public var _blockSize : stdgo.GoInt = 0;
    public function new(?_cipher:stdgo._internal.crypto.x509.X509_pemcipher.PEMCipher, ?_name:stdgo.GoString, ?_cipherFunc:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; }, ?_keySize:stdgo.GoInt, ?_blockSize:stdgo.GoInt) {
        if (_cipher != null) this._cipher = _cipher;
        if (_name != null) this._name = _name;
        if (_cipherFunc != null) this._cipherFunc = _cipherFunc;
        if (_keySize != null) this._keySize = _keySize;
        if (_blockSize != null) this._blockSize = _blockSize;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cipher", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_pemcipherdotpemcipher.__type__stdgodot_internaldotcryptodotx509dotX509_pemcipherdotPEMCipher }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_cipherFunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockdotblock.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockdotBlock, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_keySize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_blockSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_rfc1423Algo(_cipher, _name, _cipherFunc, _keySize, _blockSize);
    }
}
