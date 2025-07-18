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
function _decryptPKCS1v15(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        var _valid = (0 : stdgo.GoInt), _em = (null : stdgo.Slice<stdgo.GoUInt8>), _index = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _k = @:assignType (_priv.size() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L186"
        if ((_k < (11 : stdgo.GoInt) : Bool)) {
            _err = stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption;
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L188"
            return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L191"
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L194"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L195"
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptrsanopadding.decryptRSANoPadding(_bkey, _ciphertext);
                _em = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L198"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L199"
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
        } else {
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decrypt._decrypt(_priv, _ciphertext, false);
                _em = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L203"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L204"
                return { _0 : _valid, _1 : _em, _2 : _index, _3 : _err };
            };
        };
        var _firstByteIsZero = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(0 : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _secondByteIsTwo = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(1 : stdgo.GoInt)], (2 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _lookingForIndex = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L217"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i < (_em.length) : Bool)) {
                var _equals0 = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_em[(_i : stdgo.GoInt)], (0 : stdgo.GoUInt8)) : stdgo.GoInt);
_index = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect((_lookingForIndex & _equals0 : stdgo.GoInt), _i, _index);
_lookingForIndex = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect(_equals0, (0 : stdgo.GoInt), _lookingForIndex);
                _i++;
            };
        };
        var _validPS = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimelessoreq.constantTimeLessOrEq((10 : stdgo.GoInt), _index) : stdgo.GoInt);
        _valid = (((_firstByteIsZero & _secondByteIsTwo : stdgo.GoInt) & (((-1 ^ _lookingForIndex) & (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) & _validPS : stdgo.GoInt);
        _index = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect(_valid, (_index + (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L229"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : _valid, _1 : _em, _2 : _index, _3 : (null : stdgo.Error) };
            _valid = __tmp__._0;
            _em = __tmp__._1;
            _index = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
