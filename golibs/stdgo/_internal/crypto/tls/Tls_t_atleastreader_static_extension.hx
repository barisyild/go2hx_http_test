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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_atLeastReader_asInterface) class T_atLeastReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L802"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L803"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L807"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n > (0i64 : stdgo.GoInt64) : Bool) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L808"
            return { _0 : _n, _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L810"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n <= (0i64 : stdgo.GoInt64) : Bool) && (_err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L811"
            return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L813"
        return { _0 : _n, _1 : _err };
    }
}
