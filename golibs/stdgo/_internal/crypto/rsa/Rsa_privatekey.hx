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
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension) @:using(stdgo._internal.crypto.rsa.Rsa_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey = ({} : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey);
    public var d : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var primes : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
    public var precomputed : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues = ({} : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues);
    public function new(?publicKey:stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey, ?d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?primes:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>, ?precomputed:stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) {
        if (publicKey != null) this.publicKey = publicKey;
        if (d != null) this.d = d;
        if (primes != null) this.primes = primes;
        if (precomputed != null) this.precomputed = precomputed;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "publicKey", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }, optional : false }, { name : "d", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "primes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }) }, optional : false }, { name : "precomputed", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_precomputedvaluesdotprecomputedvalues.__type__stdgodot_internaldotcryptodotrsadotRsa_precomputedvaluesdotPrecomputedValues }, optional : false }])));
    public var size(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt return @:check32 this.publicKey.size;
    public function __copy__() {
        return new PrivateKey(publicKey, d, primes, precomputed);
    }
}
