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
function parsePKCS1PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _priv:stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey = ({} : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L50"
        if (((_rest.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L51"
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_syntaxerrordotsyntaxerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_syntaxerrordotSyntaxError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L53"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L54"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey() : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey })))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L55"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L57"
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs8dott_pkcs8.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs8dotT_pkcs8 })))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L58"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L60"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L63"
        if ((_priv.version > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L64"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported private key version" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L67"
        if (((((_priv.n.sign() <= (0 : stdgo.GoInt) : Bool) || (_priv.d.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L68"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative value" : stdgo.GoString)) };
        };
        var _key = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotrsadotRsa_privatekeydotPrivateKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey = ({ e : _priv.e, n : _priv.n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey);
        (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d = _priv.d;
        (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(((2 : stdgo.GoInt) + (_priv.additionalPrimes.length) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)] = _priv.p;
        (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)] = _priv.q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L81"
        if (_priv.additionalPrimes != null) for (_i => _a in _priv.additionalPrimes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L82"
            if ((_a.prime.sign() <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L83"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative prime" : stdgo.GoString)) };
            };
            (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _a.prime;
        };
        _err = _key.validate();
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L91"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L92"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L94"
        _key.precompute();
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L96"
        return { _0 : _key, _1 : (null : stdgo.Error) };
    }
