package stdgo._internal.crypto.sha256;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.sha256.Sha256___k.__K;
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L18"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((4u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha256.Sha256_new224.new224);
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha256/sha256.go#L19"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((5u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha256.Sha256_new_.new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
