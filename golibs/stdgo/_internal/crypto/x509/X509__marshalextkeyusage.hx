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
function _marshalExtKeyUsage(_extUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>, _unknownUsages:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension; var _1 : stdgo.Error; } {
        var _ext = @:assignType ({ id : stdgo._internal.crypto.x509.X509__oidextensionextendedkeyusage._oidExtensionExtendedKeyUsage } : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension);
        var _oids = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>(((_extUsages.length) + (_unknownUsages.length) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1339"
        if (_extUsages != null) for (_i => _u in _extUsages) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1340"
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__oidfromextkeyusage._oidFromExtKeyUsage(_u), _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _oids[(_i : stdgo.GoInt)] = _oid;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1343"
                    return { _0 : _ext?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unknown extended key usage" : stdgo.GoString)) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1347"
        (_oids.__slice__((_extUsages.length)) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>).__copyTo__(_unknownUsages);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_oids, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier }))));
            _ext.value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1351"
        return { _0 : _ext?.__copy__(), _1 : _err };
    }
