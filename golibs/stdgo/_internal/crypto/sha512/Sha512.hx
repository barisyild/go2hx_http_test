package stdgo._internal.crypto.sha512;
import stdgo._internal.crypto.Crypto;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.sha512.Sha512___k.__K;
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L22"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((6u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new384.new384);
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L23"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((7u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new_.new_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L24"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((14u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_224.new512_224);
            //"file:///Users/o/.go/go1.21.3/src/crypto/sha512/sha512.go#L25"
            stdgo._internal.crypto.Crypto_registerhash.registerHash((15u32 : stdgo._internal.crypto.Crypto_hash.Hash), stdgo._internal.crypto.sha512.Sha512_new512_256.new512_256);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
