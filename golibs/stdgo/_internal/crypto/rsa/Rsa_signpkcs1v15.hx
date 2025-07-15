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
function signPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__pkcs1v15hashinfo._pkcs1v15HashInfo(_hash, (_hashed.length)), _hashLen:stdgo.GoInt = __tmp__._0, _prefix:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L289"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L290"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _tLen = @:assignType ((_prefix.length) + _hashLen : stdgo.GoInt);
        var _k = @:assignType (_priv.size() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L295"
        if ((_k < (_tLen + (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L296"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L299"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L301"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L302"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L304"
            return stdgo._internal.crypto.internal.boring.Boring_signrsapkcs1v15.signRSAPKCS1v15(_bkey, _hash, _hashed);
        };
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L310"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < ((_k - _tLen : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _em[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L313"
        (_em.__slice__((_k - _tLen : stdgo.GoInt), (_k - _hashLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_prefix);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L314"
        (_em.__slice__((_k - _hashLen : stdgo.GoInt), _k) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_hashed);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L316"
        return stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _em, true);
    }
