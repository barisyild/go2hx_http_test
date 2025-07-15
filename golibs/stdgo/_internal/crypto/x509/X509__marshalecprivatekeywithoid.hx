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
function _marshalECPrivateKeyWithOID(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L58"
        if (!(@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.curve.isOnCurve((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.x, (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.y)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L59"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid elliptic key public key" : stdgo.GoString)) };
        };
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>(((((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/sec1.go#L62"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ version : (1 : stdgo.GoInt), privateKey : (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).d.fillBytes(_privateKey), namedCurveOID : _oid, publicKey : ({ bytes : stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.curve, (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.x, (@:checkr _key ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey.y) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) } : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_ecprivatekeydott_ecprivatekey.__type__stdgodot_internaldotcryptodotx509dotX509_t_ecprivatekeydotT_ecPrivateKey)));
    }
