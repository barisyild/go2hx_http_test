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
function _nonZeroRandomBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _random:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, _s);
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L235"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L236"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L239"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L240"
                while (_s[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, (_s.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L242"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L243"
                        return _err;
                    };
                    _s[(_i : stdgo.GoInt)] = (_s[(_i : stdgo.GoInt)] ^ ((66 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L251"
        return _err;
    }
