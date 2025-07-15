package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_pssoptions_static_extension.PSSOptions_static_extension) @:using(stdgo._internal.crypto.rsa.Rsa_pssoptions_static_extension.PSSOptions_static_extension) class PSSOptions {
    public var saltLength : stdgo.GoInt = 0;
    public var hash : stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
    public function new(?saltLength:stdgo.GoInt, ?hash:stdgo._internal.crypto.Crypto_hash.Hash) {
        if (saltLength != null) this.saltLength = saltLength;
        if (hash != null) this.hash = hash;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "saltLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "hash", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash }, optional : false }])));
    public function __copy__() {
        return new PSSOptions(saltLength, hash);
    }
}
