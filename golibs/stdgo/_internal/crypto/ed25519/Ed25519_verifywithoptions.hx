package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
function verifyWithOptions(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L274"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L276"
            {
                var _l = @:assignType (_message.length : stdgo.GoInt);
                if (_l != ((64 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L277"
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph message hash length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L279"
            {
                var _l = @:assignType ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L280"
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L282"
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 1) : stdgo.GoString)?.__copy__(), (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L283"
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L285"
            return (null : stdgo.Error);
        } else if ((((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L287"
            {
                var _l = @:assignType ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L288"
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ctx context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L290"
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 0) : stdgo.GoString)?.__copy__(), (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L291"
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L293"
            return (null : stdgo.Error);
        } else if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hash == ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L295"
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L296"
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L298"
            return (null : stdgo.Error);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L300"
            return stdgo._internal.errors.Errors_new_.new_(("ed25519: expected opts.Hash zero (unhashed message, for standard Ed25519) or SHA-512 (for Ed25519ph)" : stdgo.GoString));
        };
    }
