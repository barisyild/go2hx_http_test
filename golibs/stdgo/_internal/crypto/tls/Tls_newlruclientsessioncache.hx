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
function newLRUClientSessionCache(_capacity:stdgo.GoInt):stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache {
        {};
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1459"
        if ((_capacity < (1 : stdgo.GoInt) : Bool)) {
            _capacity = (64 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1462"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _m : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.container.list.List_element.Element>>), _q : stdgo._internal.container.list.List_new_.new_(), _capacity : _capacity } : stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncachedott_lrusessioncache.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncachedotT_lruSessionCache })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncachedott_lrusessioncache.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncachedotT_lruSessionCache }));
    }
