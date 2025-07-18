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
function _newConstantTimeHash(_h:() -> stdgo._internal.hash.Hash_hash.Hash):() -> stdgo._internal.hash.Hash_hash.Hash {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L577"
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L578"
        return function():stdgo._internal.hash.Hash_hash.Hash {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/cipher_suites.go#L579"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper((stdgo.Go.typeAssert(({
                final __t__ = _h();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_constanttimehashdott_constanttimehash.__type__stdgodot_internaldotcryptodottlsdotTls_t_constanttimehashdotT_constantTimeHash) : stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash)) : stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cthwrapperdott_cthwrapper.__type__stdgodot_internaldotcryptodottlsdotTls_t_cthwrapperdotT_cthWrapper })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cthwrapperdott_cthwrapper.__type__stdgodot_internaldotcryptodottlsdotTls_t_cthwrapperdotT_cthWrapper }));
        };
    }
