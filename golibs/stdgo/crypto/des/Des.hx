package stdgo.crypto.des;
var blockSize : stdgo.GoUInt64 = 8i64;
typedef KeySizeError = stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError;
typedef KeySizeErrorPointer = stdgo._internal.crypto.des.Des_keysizeerrorpointer.KeySizeErrorPointer;
typedef KeySizeErrorPointerPointer = stdgo._internal.crypto.des.Des_keysizeerrorpointerpointer.KeySizeErrorPointerPointer;
/**
    * Package des implements the Data Encryption Standard (DES) and the
    * Triple Data Encryption Algorithm (TDEA) as defined
    * in U.S. Federal Information Processing Standards Publication 46-3.
    * 
    * DES is cryptographically broken and should not be used for secure
    * applications.
**/
class Des {
    /**
        * NewCipher creates and returns a new cipher.Block.
    **/
    static public inline function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.des.Des_newcipher.newCipher(_key);
    /**
        * NewTripleDESCipher creates and returns a new cipher.Block.
    **/
    static public inline function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.cipher.Cipher_block.Block; var _1 : stdgo.Error; } return stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(_key);
}
