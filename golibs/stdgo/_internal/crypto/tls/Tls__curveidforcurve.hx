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
function _curveIDForCurve(_curve:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve):{ var _0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L147"
        {
            final __value__ = _curve;
            if (({
                final __t__ = __value__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L149"
                return { _0 : (29 : stdgo._internal.crypto.tls.Tls_curveid.CurveID), _1 : true };
            } else if (({
                final __t__ = __value__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.crypto.ecdh.Ecdh_p256.p256();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L151"
                return { _0 : (23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID), _1 : true };
            } else if (({
                final __t__ = __value__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.crypto.ecdh.Ecdh_p384.p384();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L153"
                return { _0 : (24 : stdgo._internal.crypto.tls.Tls_curveid.CurveID), _1 : true };
            } else if (({
                final __t__ = __value__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.crypto.ecdh.Ecdh_p521.p521();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_curvedotcurve.__type__stdgodot_internaldotcryptodotecdhdotEcdh_curvedotCurve)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L155"
                return { _0 : (25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID), _1 : true };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L157"
                return { _0 : (0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID), _1 : false };
            };
        };
    }
