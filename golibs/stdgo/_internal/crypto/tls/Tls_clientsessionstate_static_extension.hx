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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.ClientSessionState_asInterface) class ClientSessionState_static_extension {
    @:keep
    @:tdfield
    static public function resumptionState( _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _2 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState> = _cs;
        var _ticket = (null : stdgo.Slice<stdgo.GoUInt8>), _state = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L409"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _2 : stdgo.Error; } = { _0 : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket, _1 : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session, _2 : (null : stdgo.Error) };
            _ticket = __tmp__._0;
            _state = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
}
