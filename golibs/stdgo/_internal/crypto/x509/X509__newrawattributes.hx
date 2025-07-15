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
function _newRawAttributes(_attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>; var _1 : stdgo.Error; } {
        var _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(new stdgo.AnyInterface(_attributes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotpkixdotpkix_attributetypeandvaluesetdotattributetypeandvalueset.__type__stdgodot_internaldotcryptodotx509dotpkixdotPkix_attributetypeandvaluesetdotAttributeTypeAndValueSET })))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1845"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1846"
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, new stdgo.AnyInterface((stdgo.Go.setRef(_rawAttributes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }) })) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_rawvaluedotrawvalue.__type__stdgodot_internaldotencodingdotasn1dotAsn1_rawvaluedotRawValue }) })))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1849"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1850"
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1852"
        if ((_rest.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1853"
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal raw CSR Attributes" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1855"
        return { _0 : _rawAttributes, _1 : (null : stdgo.Error) };
    }
