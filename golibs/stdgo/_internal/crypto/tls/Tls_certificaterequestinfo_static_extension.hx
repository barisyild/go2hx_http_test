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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CertificateRequestInfo_asInterface) class CertificateRequestInfo_static_extension {
    @:keep
    @:tdfield
    static public function supportsCertificate( _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Error {
        @:recv var _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> = _cri;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1321"
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version, _c, (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes), __3:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1322"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1325"
        if (((@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).acceptableCAs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1326"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1329"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate != null) for (_j => _cert in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate) {
            var _x509Cert = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).leaf;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1333"
            if (((_j != (0 : stdgo.GoInt)) || ({
                final value = _x509Cert;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1335"
                {
                    {
                        var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_cert);
                        _x509Cert = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1336"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse certificate #%d in the chain: %w" : stdgo.GoString), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1340"
            if ((@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).acceptableCAs != null) for (__4 => _ca in (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).acceptableCAs) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1341"
                if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawIssuer, _ca)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1342"
                    return (null : stdgo.Error);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1346"
        return stdgo._internal.errors.Errors_new_.new_(("chain is not signed by an acceptable CA" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function context( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>):stdgo._internal.context.Context_context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L488"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx;
    }
}
