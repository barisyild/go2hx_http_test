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
function _quicError(_err:stdgo.Error):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L301"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L302"
            return (null : stdgo.Error);
        };
        var _ae:stdgo._internal.crypto.tls.Tls_alerterror.AlertError = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_alerterror.AlertError), _ae__pointer__ = stdgo.Go.pointer(_ae);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L305"
        if (stdgo._internal.errors.Errors_as.as(_err, new stdgo.AnyInterface(_ae__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_alerterrordotalerterror.__type__stdgodot_internaldotcryptodottlsdotTls_alerterrordotAlertError }))))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L306"
            return _err;
        };
        var _a:stdgo._internal.crypto.tls.Tls_t_alert.T_alert = ((0 : stdgo.GoUInt8) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _a__pointer__ = stdgo.Go.pointer(_a);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L309"
        if (!stdgo._internal.errors.Errors_as.as(_err, new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert }))))) {
            _a = (80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L314"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("%w%.0w" : stdgo.GoString), ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), new stdgo.AnyInterface(stdgo.Go.asInterface((_a : stdgo._internal.crypto.tls.Tls_alerterror.AlertError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_alerterrordotalerterror.__type__stdgodot_internaldotcryptodottlsdotTls_alerterrordotAlertError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_alerterrordotalerterror.__type__stdgodot_internaldotcryptodottlsdotTls_alerterrordotAlertError)));
    }
