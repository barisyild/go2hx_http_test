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
function _unmarshalCertificate(_s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):Bool {
        var _certList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1444"
        if (!_s.readUint24LengthPrefixed((stdgo.Go.setRef(_certList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1445"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1447"
        while (!_certList.empty()) {
            var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1450"
            if ((!stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_cert, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !_certList.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1452"
                return false;
            };
            (@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate = ((@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate.__append__(_cert) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1455"
            while (!_extensions.empty()) {
                var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _extension__pointer__ = stdgo.Go.pointer(_extension);
                var _extData:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1458"
                if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1460"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1462"
                if ((((@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate.length) > (1 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1464"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1467"
                {
                    final __value__ = _extension;
                    if (__value__ == ((5 : stdgo.GoUInt16))) {
                        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1470"
                        if ((((!_extData.readUint8(_statusType__pointer__) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || ((@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1473"
                            return false;
                        };
                    } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                        var _sctList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1477"
                        if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sctList.empty() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1478"
                            return false;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1480"
                        while (!_sctList.empty()) {
                            var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1482"
                            if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_sct, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1484"
                                return false;
                            };
                            (@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signedCertificateTimestamps = ((@:checkr _certificate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signedCertificateTimestamps.__append__(_sct) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1491"
                        continue;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1494"
                if (!_extData.empty()) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1495"
                    return false;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1499"
        return true;
    }
