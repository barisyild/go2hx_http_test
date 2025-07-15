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
function _selectSignatureScheme(_vers:stdgo.GoUInt16, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, _peerAlgs:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>):{ var _0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme; var _1 : stdgo.Error; } {
        var _supportedAlgs = stdgo._internal.crypto.tls.Tls__signatureschemesforcertificate._signatureSchemesForCertificate(_vers, _c);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L234"
        if ((_supportedAlgs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L235"
            return { _0 : (0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _1 : stdgo._internal.crypto.tls.Tls__unsupportedcertificateerror._unsupportedCertificateError(_c) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L237"
        if (((_peerAlgs.length == (0 : stdgo.GoInt)) && (_vers == (771 : stdgo.GoUInt16)) : Bool)) {
            _peerAlgs = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(2, 2, ...[(513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L244"
        if (_peerAlgs != null) for (__3 => _preferredAlg in _peerAlgs) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L245"
            if ((stdgo._internal.crypto.tls.Tls__needfips._needFIPS() && !stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_preferredAlg, stdgo._internal.crypto.tls.Tls__fipssupportedsignaturealgorithms._fipsSupportedSignatureAlgorithms) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L246"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L248"
            if (stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm(_preferredAlg, _supportedAlgs)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L249"
                return { _0 : _preferredAlg, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L252"
        return { _0 : (0 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: peer doesn\'t support any of the certificate\'s signature algorithms" : stdgo.GoString)) };
    }
