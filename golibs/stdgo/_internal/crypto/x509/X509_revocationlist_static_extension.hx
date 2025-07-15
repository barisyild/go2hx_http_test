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
@:keep @:allow(stdgo._internal.crypto.x509.X509.RevocationList_asInterface) class RevocationList_static_extension {
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList> = _rl;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2457"
        if ((((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).basicConstraintsValid && !(@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isCA : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2459"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_constraintviolationerrordotconstraintviolationerror.__type__stdgodot_internaldotcryptodotx509dotX509_constraintviolationerrordotConstraintViolationError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2462"
        if ((((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && (((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyUsage & (64 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2463"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_constraintviolationerrordotconstraintviolationerror.__type__stdgodot_internaldotcryptodotx509dotX509_constraintviolationerrordotConstraintViolationError);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2466"
        if ((@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2467"
            return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L2470"
        return _parent.checkSignature((@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm, (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawTBSRevocationList, (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signature);
    }
}
