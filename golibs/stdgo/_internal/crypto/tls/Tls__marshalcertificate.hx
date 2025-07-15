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
function _marshalCertificate(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _certificate:stdgo._internal.crypto.tls.Tls_certificate.Certificate):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1388"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1389"
            if (_certificate.certificate != null) for (_i => _cert in _certificate.certificate) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1390"
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1391"
                    _b.addBytes(_cert);
                });
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1393"
                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1394"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1396"
                        return;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1398"
                    if (_certificate.oCSPStaple != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1399"
                        _b.addUint16((5 : stdgo.GoUInt16));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1400"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1401"
                            _b.addUint8((1 : stdgo.GoUInt8));
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1402"
                            _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1403"
                                _b.addBytes(_certificate.oCSPStaple);
                            });
                        });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1407"
                    if (_certificate.signedCertificateTimestamps != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1408"
                        _b.addUint16((18 : stdgo.GoUInt16));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1409"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1410"
                            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1411"
                                if (_certificate.signedCertificateTimestamps != null) for (__3 => _sct in _certificate.signedCertificateTimestamps) {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1412"
                                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1413"
                                        _b.addBytes(_sct);
                                    });
                                };
                            });
                        });
                    };
                });
            };
        });
    }
