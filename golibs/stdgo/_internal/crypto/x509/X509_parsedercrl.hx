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
function parseDERCRL(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } {
        var _certList = (stdgo.Go.setRef(({} : stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_certificatelistdotcertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_certificatelistdotCertificateList })) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1698"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, new stdgo.AnyInterface(stdgo.Go.asInterface(_certList, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_certificatelistdotcertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_certificatelistdotCertificateList), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_certificatelistdotcertificatelist.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_certificatelistdotCertificateList })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1699"
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1701"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after CRL" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1703"
        return { _0 : _certList, _1 : (null : stdgo.Error) };
    }
