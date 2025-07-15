package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _alreadyInChain(_candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>):Bool {
        {};
        var _candidateSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L856"
        if ((@:checkr _candidate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions != null) for (__1 => _ext in (@:checkr _candidate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L857"
            if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                _candidateSAN = (stdgo.Go.setRef(_ext, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L859"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L863"
        if (_chain != null) for (__2 => _cert in _chain) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L864"
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubject, (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubject)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L865"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L867"
            if (!(stdgo.Go.typeAssert((@:checkr _candidate ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t__alreadyinchain___localname___pubkeyequal_27559dott__alreadyinchain___localname___pubkeyequal_27559.__type__stdgodot_internaldotcryptodotx509dotX509_t__alreadyinchain___localname___pubkeyequal_27559dotT__alreadyInChain___localname___pubKeyEqual_27559) : stdgo._internal.crypto.x509.X509_t__alreadyinchain___localname___pubkeyequal_27559.T__alreadyInChain___localname___pubKeyEqual_27559).equal(({
                final __t__ = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L868"
                continue;
            };
            var _certSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L871"
            if ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions != null) for (__3 => _ext in (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L872"
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName)) {
                    _certSAN = (stdgo.Go.setRef(_ext, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_extensiondotextension.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_extensiondotExtension })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L874"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L877"
            if ((({
                final value = _candidateSAN;
                (value == null || (value : Dynamic).__nil__);
            }) && ({
                final value = _certSAN;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L878"
                return true;
            } else if ((({
                final value = _candidateSAN;
                (value == null || (value : Dynamic).__nil__);
            }) || ({
                final value = _certSAN;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L880"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L882"
            if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidateSAN ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, (@:checkr _certSAN ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L883"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L886"
        return false;
    }
