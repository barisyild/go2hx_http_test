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
function _certificateRequestInfoFromMsg(_ctx:stdgo._internal.context.Context_context.Context, _vers:stdgo.GoUInt16, _certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> {
        var _cri = (stdgo.Go.setRef(({ acceptableCAs : (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities, version : _vers, _ctx : _ctx } : stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificaterequestinfodotcertificaterequestinfo.__type__stdgodot_internaldotcryptodottlsdotTls_certificaterequestinfodotCertificateRequestInfo })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>);
        var _rsaAvail:Bool = false, _ecAvail:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1038"
        if ((@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes != null) for (__3 => _certType in (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1039"
            {
                final __value__ = _certType;
                if (__value__ == ((1 : stdgo.GoUInt8))) {
                    _rsaAvail = true;
                } else if (__value__ == ((64 : stdgo.GoUInt8))) {
                    _ecAvail = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1047"
        if (!(@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1053"
            if ((_rsaAvail && _ecAvail : Bool)) {
                (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(7, 7, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            } else if (_rsaAvail) {
                (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(4, 4, ...[(1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            } else if (_ecAvail) {
                (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>(3, 3, ...[(1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), (1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1068"
            return _cri;
        };
        (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>((0 : stdgo.GoInt).toBasic(), ((@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length)).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1074"
        if ((@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (__4 => _sigScheme in (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_sigScheme), _sigType:stdgo.GoUInt8 = __tmp__._0, __5:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1076"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1077"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1079"
            {
                final __value__ = _sigType;
                if (__value__ == ((227 : stdgo.GoUInt8)) || __value__ == ((228 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1081"
                    if (_ecAvail) {
                        (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = ((@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes.__append__(_sigScheme) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                } else if (__value__ == ((226 : stdgo.GoUInt8)) || __value__ == ((225 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1085"
                    if (_rsaAvail) {
                        (@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes = ((@:checkr _cri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureSchemes.__append__(_sigScheme) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1091"
        return _cri;
    }
