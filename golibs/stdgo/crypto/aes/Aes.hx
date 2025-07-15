package stdgo.crypto.aes;
var blockSize : stdgo.GoUInt64 = 16i64;
typedef KeySizeError = stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError;
typedef KeySizeErrorPointer = stdgo._internal.crypto.aes.Aes_keysizeerrorpointer.KeySizeErrorPointer;
typedef KeySizeErrorPointerPointer = stdgo._internal.crypto.aes.Aes_keysizeerrorpointerpointer.KeySizeErrorPointerPointer;
/**
    * Package aes implements AES encryption (formerly Rijndael), as defined in
    * U.S. Federal Information Processing Standards Publication 197.
    * 
    * The AES operations in this package are not implemented using constant-time algorithms.
    * An exception is when running on systems with enabled hardware support for AES
    * that makes these operations constant-time. Examples include amd64 systems using AES-NI
    * extensions and s390x systems using Message-Security-Assist extensions.
    * On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    * the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        * NewCipher creates and returns a new cipher.Block.
        * The key argument should be the AES key,
        * either 16, 24, or 32 bytes to select
        * AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key);
}
