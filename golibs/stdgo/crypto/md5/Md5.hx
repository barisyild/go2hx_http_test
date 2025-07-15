package stdgo.crypto.md5;
var size : stdgo.GoUInt64 = 16i64;
var blockSize : stdgo.GoUInt64 = 64i64;
/**
    * Package md5 implements the MD5 hash algorithm as defined in RFC 1321.
    * 
    * MD5 is cryptographically broken and should not be used for secure
    * applications.
**/
class Md5 {
    /**
        * New returns a new hash.Hash computing the MD5 checksum. The Hash also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.md5.Md5_new_.new_();
    /**
        * Sum returns the MD5 checksum of the data.
    **/
    static public inline function sum(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.md5.Md5_sum.sum(_data);
}
