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
function parseCertificateRequest(_asn1Data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _csr:stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest = ({} : stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_asn1Data, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_csr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2094"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2095"
            return { _0 : null, _1 : _err };
        } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2097"
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2100"
        return stdgo._internal.crypto.x509.X509__parsecertificaterequest._parseCertificateRequest((stdgo.Go.setRef(_csr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_certificaterequestdott_certificaterequest.__type__stdgodot_internaldotcryptodotx509dotX509_t_certificaterequestdotT_certificateRequest })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>));
    }
