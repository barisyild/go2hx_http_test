package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function sign( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _message:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var _signature = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _hash = @:assignType (_opts.hashFunc() : stdgo._internal.crypto.Crypto_hash.Hash);
        var _context = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L91"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _opts;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signeroptsdotsigneropts.__type__stdgodot_internaldotcryptodotCrypto_signeroptsdotSignerOpts)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_optionsdotoptions.__type__stdgodot_internaldotcryptodoted25519dotEd25519_optionsdotOptions })) : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>), _1 : false };
            }, _opts = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _context = (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L94"
        if (_hash == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L96"
            {
                var _l = @:assignType (_message.length : stdgo.GoInt);
                if (_l != ((64 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L97"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph message hash length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L99"
            {
                var _l = @:assignType (_context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L100"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _signature = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L103"
            stdgo._internal.crypto.ed25519.Ed25519__sign._sign(_signature, _priv, _message, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 1) : stdgo.GoString)?.__copy__(), _context?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L104"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _signature, _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (((_hash == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (_context != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L106"
            {
                var _l = @:assignType (_context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L107"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ctx context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _signature = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L110"
            stdgo._internal.crypto.ed25519.Ed25519__sign._sign(_signature, _priv, _message, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 0) : stdgo.GoString)?.__copy__(), _context?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L111"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _signature, _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_hash == ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L113"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.crypto.ed25519.Ed25519_sign.sign(_priv, _message), _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L115"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("ed25519: expected opts.HashFunc() zero (unhashed message, for standard Ed25519) or SHA-512 (for Ed25519ph)" : stdgo.GoString)) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function seed( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L76"
        return stdgo._internal.bytes.Bytes_clone.clone((_priv.__slice__(0, (32 : stdgo.GoInt)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey));
    }
    @:keep
    @:tdfield
    static public function equal( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_x, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : true };
        } catch(__exception__) {
            { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L66"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L67"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L69"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_priv, _xx) == ((1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function public_( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var _publicKey = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L59"
        _publicKey.__copyTo__((_priv.__slice__((32 : stdgo.GoInt)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey));
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L60"
        return new stdgo.AnyInterface(stdgo.Go.asInterface((_publicKey : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey));
    }
}
