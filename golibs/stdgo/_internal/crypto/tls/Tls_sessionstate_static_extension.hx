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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SessionState_asInterface) class SessionState_static_extension {
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = _s;
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L109"
        _b.addUint16((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L110"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L111"
            _b.addUint8((2 : stdgo.GoUInt8));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L113"
            _b.addUint8((1 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L115"
        _b.addUint16((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L116"
        stdgo._internal.crypto.tls.Tls__adduint64._addUint64((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderdotbuilder.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderdotBuilder })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L117"
        _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L118"
            _b.addBytes((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret);
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L120"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L121"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extra != null) for (__3 => _extra in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extra) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L122"
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L123"
                    _b.addBytes(_extra);
                });
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L127"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L128"
            _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L130"
            _b.addUint8((0 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L132"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L133"
            _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L135"
            _b.addUint8((0 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L137"
        stdgo._internal.crypto.tls.Tls__marshalcertificate._marshalCertificate((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderdotbuilder.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderdotBuilder })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), ({ certificate : stdgo._internal.crypto.tls.Tls__certificatestobytesslice._certificatesToBytesSlice((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates), oCSPStaple : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse, signedCertificateTimestamps : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts } : stdgo._internal.crypto.tls.Tls_certificate.Certificate));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L142"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L143"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains != null) for (__3 => _chain in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L144"
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L146"
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L147"
                        _b.setError(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: empty verified chain" : stdgo.GoString)));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L148"
                        return;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L150"
                    if ((_chain.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>) != null) for (__4 => _cert in (_chain.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L151"
                        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L152"
                            _b.addBytes((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw);
                        });
                    };
                });
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L158"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L159"
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L160"
                _b.addBytes(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L163"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L164"
            if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (772 : stdgo.GoUInt16) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L165"
                stdgo._internal.crypto.tls.Tls__adduint64._addUint64((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderdotbuilder.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderdotBuilder })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._useBy);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L166"
                _b.addUint32((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L169"
        return _b.bytes();
    }
}
