package crypto.chacha20poly1305;
var keySize : stdgo.GoUInt64 = 32i64;
var nonceSize : stdgo.GoUInt64 = 12i64;
var nonceSizeX : stdgo.GoUInt64 = 24i64;
var overhead : stdgo.GoUInt64 = 16i64;
/**
    * Package chacha20poly1305 implements the ChaCha20-Poly1305 AEAD and its
    * extended nonce variant XChaCha20-Poly1305, as specified in RFC 8439 and
    * draft-irtf-cfrg-xchacha-01.
**/
class Chacha20poly1305 {
    /**
        * New returns a ChaCha20-Poly1305 AEAD that uses the given 256-bit key.
    **/
    static public inline function new_(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_new_.new_(_key);
    /**
        * NewX returns a XChaCha20-Poly1305 AEAD that uses the given 256-bit key.
        * 
        * XChaCha20-Poly1305 is a ChaCha20-Poly1305 variant that takes a longer nonce,
        * suitable to be generated randomly without risk of collisions. It should be
        * preferred when nonce uniqueness cannot be trivially ensured, or whenever
        * nonces are randomly generated.
    **/
    static public inline function newX(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305_newx.newX(_key);
}
