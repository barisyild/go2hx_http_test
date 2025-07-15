package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_privatekey_static_extension.PrivateKey_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    @:embedded
    public var publicKey : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey = ({} : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?publicKey:stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey, ?x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (publicKey != null) this.publicKey = publicKey;
        if (x != null) this.x = x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "publicKey", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdsadotdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotdsadotDsa_publickeydotPublicKey }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }])));
    public function __copy__() {
        return new PrivateKey(publicKey, x);
    }
}
