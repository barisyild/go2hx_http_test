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
function _parseAI(_der:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier; var _1 : stdgo.Error; } {
        var _ai = @:assignType (new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L153"
        if (!_der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ai.algorithm, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L154"
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed OID" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L156"
        if (_der.empty()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L157"
            return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _params:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _tag__pointer__ = stdgo.Go.pointer(_tag);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L161"
        if (!_der.readAnyASN1Element((stdgo.Go.setRef(_params, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L162"
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed parameters" : stdgo.GoString)) };
        };
        _ai.parameters.tag = (_tag : stdgo.GoInt);
        _ai.parameters.fullBytes = _params;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L166"
        return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
    }
