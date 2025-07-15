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
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function precompute( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):Void {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L584"
        if ((({
            final value = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n;
            (value == null || (value : Dynamic).__nil__);
        }) && ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length == (2 : stdgo.GoInt)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n);
                (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L589"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L590"
                return;
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)]);
                (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._p = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L593"
            if (_err != null) {
                (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n = null;
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L596"
                return;
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)]);
                (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._q = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L599"
            if (_err != null) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._n = @:binopAssign __tmp__0;
                    (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed._p = @:binopAssign __tmp__1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L602"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L607"
        if (({
            final value = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L608"
            return;
        };
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L612"
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp.mod((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d, (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp);
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dq = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L615"
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dq.mod((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d, (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dq);
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.qinv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)], (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)]);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)], (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)]);
        (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues = (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L621"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) : Bool)) {
                var _prime = (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(_i : stdgo.GoInt)];
var _values = (stdgo.Go.setRef((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues[(_i - (2 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_crtvaluedotcrtvalue.__type__stdgodot_internaldotcryptodotrsadotRsa_crtvaluedotCRTValue })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
(@:checkr _values ?? throw stdgo.Error._nullPointerDereference.__underlying__()).exp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
//"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L626"
                (@:checkr _values ?? throw stdgo.Error._nullPointerDereference.__underlying__()).exp.mod((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d, (@:checkr _values ?? throw stdgo.Error._nullPointerDereference.__underlying__()).exp);
(@:checkr _values ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_r);
(@:checkr _values ?? throw stdgo.Error._nullPointerDereference.__underlying__()).coeff = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_r, _prime);
//"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L631"
                _r.mul(_r, _prime);
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function validate( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo.Error {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L231"
        {
            var _err = @:assignType (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L232"
                return _err;
            };
        };
        var _modulus = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L237"
        if ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes != null) for (__0 => _prime in (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L239"
            if ((_prime.cmp(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne) <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L240"
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid prime value" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L242"
            _modulus.mul(_modulus, _prime);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L244"
        if (_modulus.cmp((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L245"
            return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid modulus" : stdgo.GoString));
        };
        var _congruence = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _de = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64(((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.e : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L255"
        _de.mul(_de, (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L256"
        if ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes != null) for (__1 => _prime in (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes) {
            var _pminus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L258"
            _congruence.mod(_de, _pminus1);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L259"
            if (_congruence.cmp(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L260"
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid exponents" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L263"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decrypt( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        var _plaintext = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L172"
        if (_opts == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L173"
            return ({
                @:explicitConversion final __tmp__ = stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
                { _0 : __tmp__._0, _1 : __tmp__._1 };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L176"
        {
            final __type__ = _opts;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_oaepoptionsdotoaepoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_oaepoptionsdotOAEPOptions }))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L178"
                if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mGFHash == ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L179"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptoaep._decryptOAEP((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash.new_(), (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash.new_(), _rand, _priv, _ciphertext, (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label);
                        { _0 : __tmp__._0, _1 : __tmp__._1 };
                    });
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L181"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptoaep._decryptOAEP((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash.new_(), (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mGFHash.new_(), _rand, _priv, _ciphertext, (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label);
                        { _0 : __tmp__._0, _1 : __tmp__._1 };
                    });
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pkcs1v15decryptoptionsdotpkcs1v15decryptoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pkcs1v15decryptoptionsdotPKCS1v15DecryptOptions }))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L185"
                {
                    var _l = @:assignType ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionKeyLen : stdgo.GoInt);
                    if ((_l > (0 : stdgo.GoInt) : Bool)) {
                        _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L187"
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _plaintext), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L188"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                    _plaintext = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L190"
                        {
                            var _err = @:assignType (stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15sessionkey.decryptPKCS1v15SessionKey(_rand, _priv, _ciphertext, _plaintext) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L191"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                    _plaintext = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L193"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _plaintext, _1 : (null : stdgo.Error) };
                            _plaintext = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L195"
                        return ({
                            @:explicitConversion final __tmp__ = stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
                            { _0 : __tmp__._0, _1 : __tmp__._1 };
                        });
                    };
                };
            } else {
                var _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L199"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid options for Decrypt" : stdgo.GoString)) };
                    _plaintext = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function sign( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L161"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _opts;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signeroptsdotsigneropts.__type__stdgodot_internaldotcryptodotCrypto_signeroptsdotSignerOpts)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), _1 : false };
            }, _pssOpts = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L162"
                return stdgo._internal.crypto.rsa.Rsa_signpss.signPSS(_rand, _priv, (@:checkr _pssOpts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash, _digest, _pssOpts);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L165"
        return stdgo._internal.crypto.rsa.Rsa_signpkcs1v15.signPKCS1v15(_rand, _priv, _opts.hashFunc(), _digest);
    }
    @:keep
    @:tdfield
    static public function equal( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L129"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L130"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L132"
        if ((!(@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.equal(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })))) || !stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d, (@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L133"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L135"
        if (((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) != (((@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L136"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L138"
        if ((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes != null) for (_i => _ in (@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L139"
            if (!stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(_i : stdgo.GoInt)], (@:checkr _xx ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L140"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L143"
        return true;
    }
    @:keep
    @:tdfield
    static public function public_( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L122"
        return new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey):stdgo.GoInt return @:_5 __self__.size();
}
