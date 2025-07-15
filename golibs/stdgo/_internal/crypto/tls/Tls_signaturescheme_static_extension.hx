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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SignatureScheme_asInterface) class SignatureScheme_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = _i;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L42"
        if (_i == ((513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L44"
            return ("PKCS1WithSHA1" : stdgo.GoString);
        } else if (_i == ((515 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L46"
            return ("ECDSAWithSHA1" : stdgo.GoString);
        } else if (_i == ((1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L48"
            return ("PKCS1WithSHA256" : stdgo.GoString);
        } else if (_i == ((1027 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L50"
            return ("ECDSAWithP256AndSHA256" : stdgo.GoString);
        } else if (_i == ((1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L52"
            return ("PKCS1WithSHA384" : stdgo.GoString);
        } else if (_i == ((1283 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L54"
            return ("ECDSAWithP384AndSHA384" : stdgo.GoString);
        } else if (_i == ((1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L56"
            return ("PKCS1WithSHA512" : stdgo.GoString);
        } else if (_i == ((1539 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L58"
            return ("ECDSAWithP521AndSHA512" : stdgo.GoString);
        } else if ((((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) <= _i : Bool) && (_i <= (2055 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : Bool) : Bool)) {
            _i = (_i - ((2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L61"
            return (("PSSWithSHA256PSSWithSHA384PSSWithSHA512Ed25519" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___signaturescheme_index_8.__SignatureScheme_index_8[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___signaturescheme_index_8.__SignatureScheme_index_8[((_i + (1 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common_string.go#L63"
            return ((("SignatureScheme(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
