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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry_static_extension.T_lruSessionCacheEntry_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry_static_extension.T_lruSessionCacheEntry_static_extension) class T_lruSessionCacheEntry {
    public var _sessionKey : stdgo.GoString = "";
    public var _state : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>);
    public function new(?_sessionKey:stdgo.GoString, ?_state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>) {
        if (_sessionKey != null) this._sessionKey = _sessionKey;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_sessionKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clientsessionstatedotclientsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_clientsessionstatedotClientSessionState }) }, optional : false }])));
    public function __copy__() {
        return new T_lruSessionCacheEntry(_sessionKey, _state);
    }
}
