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
function _marshalKeyUsage(_ku:stdgo._internal.crypto.x509.X509_keyusage.KeyUsage):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext = @:assignType ({ id : stdgo._internal.crypto.x509.X509__oidextensionkeyusage._oidExtensionKeyUsage, critical : true } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2).__setNumber32__();
        _a[(0 : stdgo.GoInt)] = stdgo._internal.crypto.x509.X509__reversebitsinabyte._reverseBitsInAByte((_ku : stdgo.GoUInt8));
        _a[(1 : stdgo.GoInt)] = stdgo._internal.crypto.x509.X509__reversebitsinabyte._reverseBitsInAByte(((_ku >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo.GoUInt8));
        var _l = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1325"
        if (_a[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
            _l = (2 : stdgo.GoInt);
        };
        var _bitString = (_a.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(stdgo.Go.asInterface(({ bytes : _bitString, bitLength : stdgo._internal.crypto.x509.X509__asn1bitlength._asn1BitLength(_bitString) } : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString)));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1332"
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
