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
function _parsePublicKey(_keyData:stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        var _oid = @:assignType ((@:checkr _keyData ?? throw stdgo.Error._nullPointerDereference.__underlying__()).algorithm.algorithm : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
        var _params = @:assignType ((@:checkr _keyData ?? throw stdgo.Error._nullPointerDereference.__underlying__()).algorithm.parameters?.__copy__() : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
        var _der = @:assignType ((@:checkr _keyData ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.rightAlign() : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L221"
        if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyrsa._oidPublicKeyRSA)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L225"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_params.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullbytes.nullBytes)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L226"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA key missing NULL parameters" : stdgo.GoString)) };
            };
            var _p = (stdgo.Go.setRef(({ n : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_pkcs1publickeydott_pkcs1publickey.__type__stdgodot_internaldotcryptodotx509dotX509_t_pkcs1publickeydotT_pkcs1PublicKey })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1publickey.T_pkcs1PublicKey>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L230"
            if (!_der.readASN1((stdgo.Go.setRef(_der, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L231"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public key" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L233"
            if (!_der.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L234"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA modulus" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L236"
            if (!_der.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L237"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid RSA public exponent" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L240"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.sign() <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L241"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA modulus is not a positive number" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L243"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L244"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: RSA public exponent is not a positive number" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ e : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).e, n : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L251"
            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyecdsa._oidPublicKeyECDSA)) {
            var _paramsDer = @:assignType (_params.fullBytes : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            var _namedCurveOID = (stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L255"
            if (!_paramsDer.readASN1ObjectIdentifier(_namedCurveOID)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L256"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid ECDSA parameters" : stdgo.GoString)) };
            };
            var _namedCurve = @:assignType (stdgo._internal.crypto.x509.X509__namedcurvefromoid._namedCurveFromOID((_namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L259"
            if (_namedCurve == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L260"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported elliptic curve" : stdgo.GoString)) };
            };
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic_unmarshal.unmarshal(_namedCurve, _der), _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L263"
            if (({
                final value = _x;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L264"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal elliptic curve point" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ curve : _namedCurve, x : _x, y : _y } : stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L271"
            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyed25519._oidPublicKeyEd25519)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L275"
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L276"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: Ed25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L278"
            if ((_der.length) != ((32 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L279"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: wrong Ed25519 public key size" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L281"
            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface((_der : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)), _1 : (null : stdgo.Error) };
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeyx25519._oidPublicKeyX25519)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L285"
            if ((_params.fullBytes.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L286"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: X25519 key encoded with illegal parameters" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L288"
            return ({
                @:explicitConversion final __tmp__ = stdgo._internal.crypto.ecdh.Ecdh_x25519.x25519().newPublicKey(_der);
                { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(__tmp__._0, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdhdotEcdh_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdhdotecdh_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdhdotEcdh_publickeydotPublicKey }))), _1 : __tmp__._1 };
            });
        } else if (_oid.equal(stdgo._internal.crypto.x509.X509__oidpublickeydsa._oidPublicKeyDSA)) {
            var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L291"
            if (!_der.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface(_y, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L292"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA public key" : stdgo.GoString)) };
            };
            var _pub = (stdgo.Go.setRef(({ y : _y, parameters : ({ p : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), q : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), g : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) } : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters) } : stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdsadotdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotdsadotDsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>);
            var _paramsDer = @:assignType (_params.fullBytes : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L303"
            if ((((!_paramsDer.readASN1((stdgo.Go.setRef(_paramsDer, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_paramsDer.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.p, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })))) : Bool) || !_paramsDer.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.q, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })))) : Bool) || !_paramsDer.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.g, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })))) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L307"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid DSA parameters" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L309"
            if ((((((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.sign() <= (0 : stdgo.GoInt) : Bool) || ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _pub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L311"
                return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: zero or negative DSA parameter" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L313"
            return { _0 : new stdgo.AnyInterface(stdgo.Go.asInterface(_pub, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdsadotdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotdsadotDsa_publickeydotPublicKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdsadotdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotdsadotDsa_publickeydotPublicKey }))), _1 : (null : stdgo.Error) };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L315"
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown public key algorithm" : stdgo.GoString)) };
        };
    }
