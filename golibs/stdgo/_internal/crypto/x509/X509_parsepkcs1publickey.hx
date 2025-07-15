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
function parsePKCS1PublicKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>; var _1 : stdgo.Error; } {
        var _pub:stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey = ({} : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_pub, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1publickeydott_pkcs1publickey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1publickeydotT_pkcs1PublicKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1publickeydott_pkcs1publickey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1publickeydotT_pkcs1PublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1publickeydott_pkcs1publickey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1publickeydotT_pkcs1PublicKey })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L141"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L142"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo() : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo })))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L143"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse public key (use ParsePKIXPublicKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L145"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L147"
        if (((_rest.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L148"
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L151"
        if (((_pub.n.sign() <= (0 : stdgo.GoInt) : Bool) || (_pub.e <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L152"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: public key contains zero or negative value" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L154"
        if ((_pub.e > (2147483647 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L155"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: public key contains large public exponent" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L158"
        return { _0 : (stdgo.Go.setRef(({ e : _pub.e, n : _pub.n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : (null : stdgo.Error) };
    }
