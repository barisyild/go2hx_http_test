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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Dialer_asInterface) class Dialer_static_extension {
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__dial._dial(_ctx, _d._netDialer(), _network?.__copy__(), _addr?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L218"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L220"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L222"
        return { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _netDialer( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>):stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L201"
        if (({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).netDialer;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L202"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).netDialer;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L204"
        return (stdgo.Go.setRef(({} : stdgo._internal.net.Net_dialer.Dialer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dialerdotdialer.__type__stdgodot_internaldotnetdotNet_dialerdotDialer })) : stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>);
    }
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L197"
        return _d.dialContext(stdgo._internal.context.Context_background.background(), _network?.__copy__(), _addr?.__copy__());
    }
}
