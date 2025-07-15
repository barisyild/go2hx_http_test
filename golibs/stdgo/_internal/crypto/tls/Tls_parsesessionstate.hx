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
function parseSessionState(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } {
        var _ss = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_sessionstate.SessionState() : stdgo._internal.crypto.tls.Tls_sessionstate.SessionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_sessionstatedotsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_sessionstatedotSessionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _typ:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _extMasterSecret:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _earlyData:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _earlyData__pointer__ = stdgo.Go.pointer(_earlyData), _extMasterSecret__pointer__ = stdgo.Go.pointer(_extMasterSecret), _typ__pointer__ = stdgo.Go.pointer(_typ);
        var _cert:stdgo._internal.crypto.tls.Tls_certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate);
        var _extra:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L187"
        if (((((((((((!_s.readUint16(stdgo.Go.pointer((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version)) || !_s.readUint8(_typ__pointer__) : Bool) || (((_typ != (1 : stdgo.GoUInt8)) && (_typ != (2 : stdgo.GoUInt8)) : Bool)) : Bool) || !_s.readUint16(stdgo.Go.pointer((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint64._readUint64((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), stdgo.Go.pointer((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint24LengthPrefixed((stdgo.Go.setRef(_extra, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.readUint8(_extMasterSecret__pointer__) : Bool) || !_s.readUint8(_earlyData__pointer__) : Bool) || ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret.length) == ((0 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalcertificate._unmarshalCertificate((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_cert, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L198"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L200"
        while (!_extra.empty()) {
            var _e:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L202"
            if (!stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extra, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L203"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extra = ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extra.__append__(_e) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L207"
        {
            final __value__ = _extMasterSecret;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = true;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L213"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L215"
        {
            final __value__ = _earlyData;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData = true;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L221"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L223"
        if (_cert.certificate != null) for (__3 => _cert in _cert.certificate) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__globalcertcache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L225"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L226"
                return { _0 : null, _1 : _err };
            };
            (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles = ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
            (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.__append__((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        };
        (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = _cert.oCSPStaple;
        (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = _cert.signedCertificateTimestamps;
        var _chainList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L234"
        if (!_s.readUint24LengthPrefixed((stdgo.Go.setRef(_chainList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L235"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L237"
        while (!_chainList.empty()) {
            var _certList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L239"
            if (!_chainList.readUint24LengthPrefixed((stdgo.Go.setRef(_certList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L240"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            var _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L243"
            if (((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L244"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            _chain = (_chain.__append__((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L247"
            while (!_certList.empty()) {
                var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L249"
                if (!stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_cert, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L250"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.tls.Tls__globalcertcache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L253"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L254"
                    return { _0 : null, _1 : _err };
                };
                (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles = ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
                _chain = (_chain.__append__((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
            };
            (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains.__append__(_chain) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L261"
        if ((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData) {
            var _alpn:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L263"
            if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_alpn, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L264"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol = (_alpn : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L268"
        {
            var _isClient = @:assignType (_typ == ((2 : stdgo.GoUInt8)) : Bool);
            if (!_isClient) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L269"
                if (!_s.empty()) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L270"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L272"
                return { _0 : _ss, _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L275"
        if (((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L276"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no server certificates in client session" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L278"
        if (((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version < (772 : stdgo.GoUInt16) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L279"
            if (!_s.empty()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L280"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L282"
            return { _0 : _ss, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L284"
        if (((!_s.readUint64(stdgo.Go.pointer((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._useBy)) || !_s.readUint32(stdgo.Go.pointer((@:checkr _ss ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd)) : Bool) || !_s.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L285"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L287"
        return { _0 : _ss, _1 : (null : stdgo.Error) };
    }
