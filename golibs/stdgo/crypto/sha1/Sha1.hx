package stdgo.crypto.sha1;
var size : stdgo.GoUInt64 = 20i64;
var blockSize : stdgo.GoUInt64 = 64i64;
/**
    * Package sha1 implements the SHA-1 hash algorithm as defined in RFC 3174.
    * 
    * SHA-1 is cryptographically broken and should not be used for secure
    * applications.
**/
class Sha1 {
    /**
        * New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha1.Sha1_new_.new_();
    /**
        * Sum returns the SHA-1 checksum of the data.
    **/
    static public inline function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha1.Sha1_sum.sum(_data);
}
