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
function _illegalClientHelloChange(_ch:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _ch1:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L536"
        if ((((((((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.length) != (((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.length)) || ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.length) != (((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.length)) : Bool) || ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves.length) != (((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves.length)) : Bool) || ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) != (((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length)) : Bool) || ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.length) != (((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.length)) : Bool) || ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols.length != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols.length)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L542"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L544"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L545"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L546"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L549"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L550"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L551"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L554"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L555"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L556"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L559"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L560"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L561"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L564"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L565"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L566"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L569"
        if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols != null) for (_i => _ in (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L570"
            if ((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols[(_i : stdgo.GoInt)] != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L571"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L574"
        return ((((((((((((((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods) : Bool) || (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName) : Bool) || (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints) : Bool) || (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket) : Bool) || (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation) : Bool) || (@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts != ((@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie) : Bool) || !stdgo._internal.bytes.Bytes_equal.equal((@:checkr _ch ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes, (@:checkr _ch1 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes) : Bool);
    }
