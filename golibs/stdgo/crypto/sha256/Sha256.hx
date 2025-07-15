package stdgo.crypto.sha256;
var size : stdgo.GoUInt64 = 32i64;
var size224 : stdgo.GoUInt64 = 28i64;
var blockSize : stdgo.GoUInt64 = 64i64;
/**
    * Package sha256 implements the SHA224 and SHA256 hash algorithms as defined
    * in FIPS 180-4.
**/
class Sha256 {
    /**
        * New returns a new hash.Hash computing the SHA256 checksum. The Hash
        * also implements encoding.BinaryMarshaler and
        * encoding.BinaryUnmarshaler to marshal and unmarshal the internal
        * state of the hash.
    **/
    static public inline function new_():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha256.Sha256_new_.new_();
    /**
        * New224 returns a new hash.Hash computing the SHA224 checksum.
    **/
    static public inline function new224():stdgo._internal.hash.Hash_hash.Hash return stdgo._internal.crypto.sha256.Sha256_new224.new224();
    /**
        * Sum256 returns the SHA256 checksum of the data.
    **/
    static public inline function sum256(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha256.Sha256_sum256.sum256(_data);
    /**
        * Sum224 returns the SHA224 checksum of the data.
    **/
    static public inline function sum224(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8> return stdgo._internal.crypto.sha256.Sha256_sum224.sum224(_data);
}
