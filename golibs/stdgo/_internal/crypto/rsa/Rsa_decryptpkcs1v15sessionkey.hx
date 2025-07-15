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
function decryptPKCS1v15SessionKey(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L154"
        {
            var _err = @:assignType (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L155"
                return _err;
            };
        };
        var _k = @:assignType (_priv.size() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L158"
        if (((_k - ((((_key.length) + (3 : stdgo.GoInt) : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L159"
            return stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption;
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptpkcs1v15._decryptPKCS1v15(_priv, _ciphertext), _valid:stdgo.GoInt = __tmp__._0, _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _index:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L163"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L164"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L167"
        if ((_em.length) != (_k)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L170"
            return stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption;
        };
        _valid = (_valid & (stdgo._internal.crypto.subtle.Subtle_constanttimeeq.constantTimeEq((((_em.length) - _index : stdgo.GoInt) : stdgo.GoInt32), (_key.length : stdgo.GoInt32))) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L174"
        stdgo._internal.crypto.subtle.Subtle_constanttimecopy.constantTimeCopy(_valid, _key, (_em.__slice__(((_em.length) - (_key.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L175"
        return (null : stdgo.Error);
    }
