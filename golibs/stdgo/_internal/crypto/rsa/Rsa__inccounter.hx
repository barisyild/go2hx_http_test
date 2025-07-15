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
function _incCounter(_c:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L440"
        {
            _c[(3 : stdgo.GoInt)]++;
            if (_c[(3 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L441"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L443"
        {
            _c[(2 : stdgo.GoInt)]++;
            if (_c[(2 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L444"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L446"
        {
            _c[(1 : stdgo.GoInt)]++;
            if (_c[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L447"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L449"
        _c[(0 : stdgo.GoInt)]++;
    }
