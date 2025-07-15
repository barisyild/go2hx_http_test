package crypto.chacha20;
var keySize : stdgo.GoUInt64 = 32i64;
var nonceSize : stdgo.GoUInt64 = 12i64;
var nonceSizeX : stdgo.GoUInt64 = 24i64;
typedef Cipher = _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher;
typedef CipherPointer = _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipherpointer.CipherPointer;
typedef CipherPointerPointer = _internal.golangdotorg.x.crypto.chacha20.Chacha20_cipherpointerpointer.CipherPointerPointer;
/**
    * Package chacha20 implements the ChaCha20 and XChaCha20 encryption algorithms
    * as specified in RFC 8439 and draft-irtf-cfrg-xchacha-01.
**/
class Chacha20 {
    /**
        * NewUnauthenticatedCipher creates a new ChaCha20 stream cipher with the given
        * 32 bytes key and a 12 or 24 bytes nonce. If a nonce of 24 bytes is provided,
        * the XChaCha20 construction will be used. It returns an error if key or nonce
        * have any other length.
        * 
        * Note that ChaCha20, like all stream ciphers, is not authenticated and allows
        * attackers to silently tamper with the plaintext. For this reason, it is more
        * appropriate as a building block than as a standalone encryption mechanism.
        * Instead, consider using package golang.org/x/crypto/chacha20poly1305.
    **/
    static public inline function newUnauthenticatedCipher(_key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>; var _1 : stdgo.Error; } return _internal.golangdotorg.x.crypto.chacha20.Chacha20_newunauthenticatedcipher.newUnauthenticatedCipher(_key, _nonce);
    /**
        * HChaCha20 uses the ChaCha20 core to generate a derived key from a 32 bytes
        * key and a 16 bytes nonce. It returns an error if key or nonce have any other
        * length. It is used as part of the XChaCha20 construction.
    **/
    static public inline function hChaCha20(_key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return _internal.golangdotorg.x.crypto.chacha20.Chacha20_hchacha20.hChaCha20(_key, _nonce);
}
