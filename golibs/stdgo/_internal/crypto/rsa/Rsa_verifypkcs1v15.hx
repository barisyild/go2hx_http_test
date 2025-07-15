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
function verifyPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L325"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L327"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L328"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L330"
            {
                var _err = @:assignType (stdgo._internal.crypto.internal.boring.Boring_verifyrsapkcs1v15.verifyRSAPKCS1v15(_bkey, _hash, _hashed, _sig) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L331"
                    return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L333"
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__pkcs1v15hashinfo._pkcs1v15HashInfo(_hash, (_hashed.length)), _hashLen:stdgo.GoInt = __tmp__._0, _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L337"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L338"
            return _err;
        };
        var _tLen = @:assignType ((_prefix.length) + _hashLen : stdgo.GoInt);
        var _k = @:assignType (_pub.size() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L343"
        if ((_k < (_tLen + (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L344"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L350"
        if (_k != ((_sig.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L351"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _sig), _em:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L355"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L356"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        var _ok = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(0 : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(1 : stdgo.GoInt)], (1 : stdgo.GoUInt8))) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_em.__slice__((_k - _hashLen : stdgo.GoInt), _k) : stdgo.Slice<stdgo.GoUInt8>), _hashed)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_em.__slice__((_k - _tLen : stdgo.GoInt), (_k - _hashLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _prefix)) : stdgo.GoInt);
        _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)], (0 : stdgo.GoUInt8))) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L366"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < ((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _ok = (_ok & (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(_i : stdgo.GoInt)], (255 : stdgo.GoUInt8))) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L370"
        if (_ok != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L371"
            return stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L374"
        return (null : stdgo.Error);
    }
