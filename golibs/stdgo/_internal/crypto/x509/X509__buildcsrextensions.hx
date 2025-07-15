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
function _buildCSRExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        var _ret:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1381"
        if (((((((((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__marshalsans._marshalSANs((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).emailAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iPAddresses, (@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRIs), _sanBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1384"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1385"
                return { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
            };
            _ret = (_ret.__append__(({ id : stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, value : _sanBytes } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1394"
        return { _0 : (_ret.__append__(...((@:checkr _template ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : (null : stdgo.Error) };
    }
