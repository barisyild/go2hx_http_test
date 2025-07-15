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
function marshalPKCS1PrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L105"
        _key.precompute();
        var _version = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L108"
        if ((((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes.length) > (2 : stdgo.GoInt) : Bool)) {
            _version = (1 : stdgo.GoInt);
        };
        var _priv = @:assignType ({ version : _version, n : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.n, e : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.e, d : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d, p : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(0 : stdgo.GoInt)], q : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[(1 : stdgo.GoInt)], dp : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dp, dq : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.dq, qinv : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.qinv } : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey);
        _priv.additionalPrimes = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>(((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L125"
        if ((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues != null) for (_i => _values in (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precomputed.cRTValues) {
            _priv.additionalPrimes[(_i : stdgo.GoInt)].prime = (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).primes[((2 : stdgo.GoInt) + _i : stdgo.GoInt)];
            _priv.additionalPrimes[(_i : stdgo.GoInt)].exp = _values.exp;
            _priv.additionalPrimes[(_i : stdgo.GoInt)].coeff = _values.coeff;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(_priv, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1privatekeydott_pkcs1privatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1privatekeydotT_pkcs1PrivateKey))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/pkcs1.go#L132"
        return _b;
    }
