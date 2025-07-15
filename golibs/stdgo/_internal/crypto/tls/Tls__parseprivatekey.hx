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
function _parsePrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.Crypto_privatekey.PrivateKey; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L340"
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L341"
                return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(_key, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey }))), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L343"
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs8privatekey.parsePKCS8PrivateKey(_der), _key:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L344"
                {
                    final __type__ = _key;
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey })) || stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey)) {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L346"
                        return { _0 : ({
                            final __t__ = _key;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _1 : (null : stdgo.Error) };
                    } else {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L348"
                        return { _0 : (null : stdgo._internal.crypto.Crypto_privatekey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: found unknown private key type in PKCS#8 wrapping" : stdgo.GoString)) };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L351"
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseecprivatekey.parseECPrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L352"
                return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(_key, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey }))), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L355"
        return { _0 : (null : stdgo._internal.crypto.Crypto_privatekey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: failed to parse private key" : stdgo.GoString)) };
    }
