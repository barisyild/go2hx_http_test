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
function _parseCertificate(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        var _cert = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_certificate.Certificate() : stdgo._internal.crypto.x509.X509_certificate.Certificate), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _input = @:assignType (_der : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L807"
        if (!_input.readASN1Element((stdgo.Go.setRef(_input, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L808"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw = _input;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L811"
        if (!_input.readASN1((stdgo.Go.setRef(_input, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L812"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed certificate" : stdgo.GoString)) };
        };
        var _tbs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L818"
        if (!_input.readASN1Element((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L819"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawTBSCertificate = _tbs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L822"
        if (!_tbs.readASN1((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L823"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs certificate" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L826"
        if (!_tbs.readOptionalASN1Integer(new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific(), new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L827"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L829"
        if (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L830"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed version" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L834"
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version++;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L835"
        if (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version > (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L836"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid version" : stdgo.GoString)) };
        };
        var _serial = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L840"
        if (!_tbs.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface(_serial, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L841"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serialNumber = _serial;
        var _sigAISeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L851"
        if (!_tbs.readASN1((stdgo.Go.setRef(_sigAISeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L852"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L858"
        if (!_input.readASN1((stdgo.Go.setRef(_outerSigAISeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L859"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L861"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L862"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L865"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L866"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm = stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _issuerSeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L871"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_issuerSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L872"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L876"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L877"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L879"
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuer.fillFromRDNSequence(_issuerRDNs);
        var _validity:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L882"
        if (!_tbs.readASN1((stdgo.Go.setRef(_validity, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L883"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed validity" : stdgo.GoString)) };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsevalidity._parseValidity(_validity);
            (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notBefore = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L886"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L887"
            return { _0 : null, _1 : _err };
        };
        var _subjectSeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L891"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_subjectSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L892"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubject = _subjectSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_subjectSeq), _subjectRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L896"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L897"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L899"
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.fillFromRDNSequence(_subjectRDNs);
        var _spki:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L902"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_spki, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L903"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawSubjectPublicKeyInfo = _spki;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L906"
        if (!_spki.readASN1((stdgo.Go.setRef(_spki, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L907"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed spki" : stdgo.GoString)) };
        };
        var _pkAISeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L910"
        if (!_spki.readASN1((stdgo.Go.setRef(_pkAISeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L911"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed public key algorithm identifier" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_pkAISeq), _pkAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L914"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L915"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm = stdgo._internal.crypto.x509.X509__getpublickeyalgorithmfromoid._getPublicKeyAlgorithmFromOID(_pkAI.algorithm);
        var _spk:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L919"
        if (!_spki.readASN1BitString((stdgo.Go.setRef(_spk, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L920"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectPublicKey" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L922"
        if ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm != ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsepublickey._parsePublicKey((stdgo.Go.setRef(({ algorithm : _pkAI?.__copy__(), publicKey : _spk?.__copy__() } : stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_publickeyinfodott_publickeyinfo.__type__stdgodot_internaldotcryptodotx509dotX509_t_publickeyinfodotT_publicKeyInfo })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_publickeyinfo.T_publicKeyInfo>));
                (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L927"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L928"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L932"
        if (((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version > (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L933"
            if (!_tbs.skipOptionalASN1((1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L934"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuerUniqueID" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L936"
            if (!_tbs.skipOptionalASN1((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L937"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed subjectUniqueID" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L939"
            if ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version == ((3 : stdgo.GoInt))) {
                var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L942"
                if (!_tbs.readOptionalASN1((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (3 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L943"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L945"
                if (_present) {
                    var _seenExts = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L947"
                    if (!_extensions.readASN1((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L948"
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L950"
                    while (!_extensions.empty()) {
                        var _extension:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L952"
                        if (!_extensions.readASN1((stdgo.Go.setRef(_extension, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L953"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L956"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L957"
                            return { _0 : null, _1 : _err };
                        };
                        var _oidStr = @:assignType ((_ext.id.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L960"
                        if ((_seenExts[_oidStr] ?? false)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L961"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: certificate contains duplicate extensions" : stdgo.GoString)) };
                        };
                        _seenExts[_oidStr] = true;
                        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions = ((@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    };
                    _err = stdgo._internal.crypto.x509.X509__processextensions._processExtensions(_cert);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L967"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L968"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        var _signature:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L975"
        if (!_input.readASN1BitString((stdgo.Go.setRef(_signature, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L976"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signature = _signature.rightAlign();
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L980"
        return { _0 : _cert, _1 : (null : stdgo.Error) };
    }
