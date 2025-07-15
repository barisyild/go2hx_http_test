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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CurveID_asInterface) class CurveID_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_curveid.CurveID = _i;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L86"
        if ((((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) <= _i : Bool) && (_i <= (25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : Bool) : Bool)) {
            _i = (_i - ((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID)) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L89"
            return (("CurveP256CurveP384CurveP521" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___curveid_index_0.__CurveID_index_0[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___curveid_index_0.__CurveID_index_0[((_i + (1 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((29 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L91"
            return ("X25519" : stdgo.GoString);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L93"
            return ((("CurveID(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
