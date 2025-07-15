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
function x509KeyPair(_certPEMBlock:stdgo.Slice<stdgo.GoUInt8>, _keyPEMBlock:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.tls.Tls_certificate.Certificate; var _1 : stdgo.Error; } {
        var _fail = @:assignType (function(_err:stdgo.Error):{ var _0 : stdgo._internal.crypto.tls.Tls_certificate.Certificate; var _1 : stdgo.Error; } {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L246"
            return { _0 : (new stdgo._internal.crypto.tls.Tls_certificate.Certificate() : stdgo._internal.crypto.tls.Tls_certificate.Certificate), _1 : _err };
        } : stdgo.Error -> { var _0 : stdgo._internal.crypto.tls.Tls_certificate.Certificate; var _1 : stdgo.Error; });
        var _cert:stdgo._internal.crypto.tls.Tls_certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate);
        var _skippedBlockTypes:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L250"
        while (true) {
            var _certDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_certPEMBlock);
                _certDERBlock = @:tmpset0 __tmp__._0;
                _certPEMBlock = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L253"
            if (({
                final value = _certDERBlock;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L254"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L256"
            if ((@:checkr _certDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type == (("CERTIFICATE" : stdgo.GoString))) {
                _cert.certificate = (_cert.certificate.__append__((@:checkr _certDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bytes) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            } else {
                _skippedBlockTypes = (_skippedBlockTypes.__append__((@:checkr _certDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L263"
        if ((_cert.certificate.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L264"
            if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L265"
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in certificate input" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L267"
            if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_skippedBlockTypes[(0 : stdgo.GoInt)]?.__copy__(), ("PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L268"
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find certificate PEM data in certificate input, but did find a private key; PEM inputs may have been switched" : stdgo.GoString)));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L270"
            return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find \"CERTIFICATE\" PEM block in certificate input after skipping PEM blocks of the following types: %v" : stdgo.GoString), new stdgo.AnyInterface(_skippedBlockTypes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))));
        };
        _skippedBlockTypes = (_skippedBlockTypes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _keyDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L275"
        while (true) {
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_keyPEMBlock);
                _keyDERBlock = @:tmpset0 __tmp__._0;
                _keyPEMBlock = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L277"
            if (({
                final value = _keyDERBlock;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L278"
                if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L279"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in key input" : stdgo.GoString)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L281"
                if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && (_skippedBlockTypes[(0 : stdgo.GoInt)] == ("CERTIFICATE" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L282"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: found a certificate rather than a key in the PEM for the private key" : stdgo.GoString)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L284"
                return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find PEM block with type ending in \"PRIVATE KEY\" in key input after skipping PEM blocks of the following types: %v" : stdgo.GoString), new stdgo.AnyInterface(_skippedBlockTypes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L286"
            if ((((@:checkr _keyDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type == ("PRIVATE KEY" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _keyDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type?.__copy__(), (" PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L287"
                break;
            };
            _skippedBlockTypes = (_skippedBlockTypes.__append__((@:checkr _keyDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_cert.certificate[(0 : stdgo.GoInt)]), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L295"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L296"
            return _fail(_err);
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__parseprivatekey._parsePrivateKey((@:checkr _keyDERBlock ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bytes);
            _cert.privateKey = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L300"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L301"
            return _fail(_err);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L304"
        {
            final __type__ = (@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) : __type__.__underlying__().value);
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_cert.privateKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L307"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L308"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L310"
                if ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.cmp((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L311"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>) : __type__.__underlying__().value);
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_cert.privateKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L315"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L316"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L318"
                if ((((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.cmp((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.x) != (0 : stdgo.GoInt)) || ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.cmp((@:checkr _priv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.y) != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L319"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = __type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__() == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey) : __type__.__underlying__().value);
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_cert.privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_privatekeydotPrivateKey) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : true };
                } catch(__exception__) {
                    { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L323"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L324"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L326"
                if (!stdgo._internal.bytes.Bytes_equal.equal((stdgo.Go.typeAssert(_priv.public_(), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _pub)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L327"
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L330"
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: unknown public key algorithm" : stdgo.GoString)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L333"
        return { _0 : _cert?.__copy__(), _1 : (null : stdgo.Error) };
    }
