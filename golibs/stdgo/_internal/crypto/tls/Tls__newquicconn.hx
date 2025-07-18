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
function _newQUICConn(_conn:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> {
        (@:checkr _conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic = (stdgo.Go.setRef(({ _signalc : (new stdgo.Chan<stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12>(0, () -> ({  } : stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12)) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12>), _blockedc : (new stdgo.Chan<stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12>(0, () -> ({  } : stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12)) : stdgo.Chan<stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12>) } : stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_quicstatedott_quicstate.__type__stdgodot_internaldotcryptodottlsdotTls_t_quicstatedotT_quicState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState>);
        (@:checkr (@:checkr _conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eventArr.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L160"
        return (stdgo.Go.setRef(({ _conn : _conn } : stdgo._internal.crypto.tls.Tls_quicconn.QUICConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_quicconndotquicconn.__type__stdgodot_internaldotcryptodottlsdotTls_quicconndotQUICConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>);
    }
