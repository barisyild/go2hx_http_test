package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golangdotorg.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte;
function _typeAndHashFromSignatureScheme(_signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme):{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } {
        var _sigType = (0 : stdgo.GoUInt8), _hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L99"
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (225 : stdgo.GoUInt8);
            } else if (__value__ == ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (226 : stdgo.GoUInt8);
            } else if (__value__ == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (227 : stdgo.GoUInt8);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _sigType = (228 : stdgo.GoUInt8);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L109"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_signatureAlgorithm, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme))) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L111"
        {
            final __value__ = _signatureAlgorithm;
            if (__value__ == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (3u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (5u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2053 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (6u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((2054 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) || __value__ == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = (7u32 : stdgo._internal.crypto.Crypto_hash.Hash);
            } else if (__value__ == ((2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
                _hash = stdgo._internal.crypto.tls.Tls__directsigning._directSigning;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L123"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash), _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported signature algorithm: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_signatureAlgorithm, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme))) };
                    _sigType = __tmp__._0;
                    _hash = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L125"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo._internal.crypto.Crypto_hash.Hash; var _2 : stdgo.Error; } = { _0 : _sigType, _1 : _hash, _2 : (null : stdgo.Error) };
            _sigType = __tmp__._0;
            _hash = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
