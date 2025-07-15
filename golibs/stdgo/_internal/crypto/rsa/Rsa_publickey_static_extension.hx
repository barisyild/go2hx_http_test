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
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function equal( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = _pub;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L63"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L64"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L66"
        return (stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n, (@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n) && ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e == (@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e) : Bool);
    }
    @:keep
    @:tdfield
    static public function size( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.GoInt {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = _pub;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L57"
        return ((((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
