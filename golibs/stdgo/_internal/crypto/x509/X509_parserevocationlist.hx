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
function parseRevocationList(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>; var _1 : stdgo.Error; } {
        var _rl = (stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_revocationlist.RevocationList() : stdgo._internal.crypto.x509.X509_revocationlist.RevocationList), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_revocationlistdotrevocationlist.__type__stdgodot_internaldotcryptodotx509dotX509_revocationlistdotRevocationList })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>);
        var _input = @:assignType (_der : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1023"
        if (!_input.readASN1Element((stdgo.Go.setRef(_input, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1024"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw = _input;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1027"
        if (!_input.readASN1((stdgo.Go.setRef(_input, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1028"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        var _tbs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1034"
        if (!_input.readASN1Element((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1035"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawTBSRevocationList = _tbs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1038"
        if (!_tbs.readASN1((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1039"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed tbs crl" : stdgo.GoString)) };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt), _version__pointer__ = stdgo.Go.pointer(_version);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1043"
        if (!_tbs.peekASN1Tag((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1044"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported crl version" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1046"
        if (!_tbs.readASN1Integer(new stdgo.AnyInterface(_version__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1047"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1049"
        if (_version != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1050"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: unsupported crl version: %d" : stdgo.GoString), new stdgo.AnyInterface(_version, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
        };
        var _sigAISeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1054"
        if (!_tbs.readASN1((stdgo.Go.setRef(_sigAISeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1055"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature algorithm identifier" : stdgo.GoString)) };
        };
        var _outerSigAISeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1061"
        if (!_input.readASN1((stdgo.Go.setRef(_outerSigAISeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1062"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed algorithm identifier" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1064"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_outerSigAISeq, _sigAISeq)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1065"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: inner and outer signature algorithm identifiers don\'t match" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseai._parseAI(_sigAISeq), _sigAI:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1068"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1069"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signatureAlgorithm = stdgo._internal.crypto.x509.X509__getsignaturealgorithmfromai._getSignatureAlgorithmFromAI(_sigAI?.__copy__());
        var _signature:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1074"
        if (!_input.readASN1BitString((stdgo.Go.setRef(_signature, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString })) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1075"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed signature" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signature = _signature.rightAlign();
        var _issuerSeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1080"
        if (!_tbs.readASN1Element((stdgo.Go.setRef(_issuerSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1081"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed issuer" : stdgo.GoString)) };
        };
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawIssuer = _issuerSeq;
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsename._parseName(_issuerSeq), _issuerRDNs:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1085"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1086"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1088"
        (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).issuer.fillFromRDNSequence(_issuerRDNs);
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
            (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).thisUpdate = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1091"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1092"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1094"
        if ((_tbs.peekASN1Tag((24 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || _tbs.peekASN1Tag((23 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_tbs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextUpdate = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1096"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1097"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1101"
        if (_tbs.peekASN1Tag((48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            var _revokedSeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1103"
            if (!_tbs.readASN1((stdgo.Go.setRef(_revokedSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1104"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1106"
            while (!_revokedSeq.empty()) {
                var _rce = @:assignType (new stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry() : stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry);
                var _certSeq:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1110"
                if (!_revokedSeq.readASN1Element((stdgo.Go.setRef(_certSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1111"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.raw = _certSeq;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1114"
                if (!_certSeq.readASN1((stdgo.Go.setRef(_certSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1115"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl" : stdgo.GoString)) };
                };
                _rce.serialNumber = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1119"
                if (!_certSeq.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface(_rce.serialNumber, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1120"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed serial number" : stdgo.GoString)) };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_certSeq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>));
                    _rce.revocationTime = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1123"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1124"
                    return { _0 : null, _1 : _err };
                };
                var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1128"
                if (!_certSeq.readOptionalASN1((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1129"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1131"
                if (_present) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1132"
                    while (!_extensions.empty()) {
                        var _extension:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1134"
                        if (!_extensions.readASN1((stdgo.Go.setRef(_extension, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1135"
                            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                        };
                        var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1138"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1139"
                            return { _0 : null, _1 : _err };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1141"
                        if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionreasoncode._oidExtensionReasonCode)) {
                            var _val = @:assignType (_ext.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1143"
                            if (!_val.readASN1Enum(stdgo.Go.pointer(_rce.reasonCode))) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1144"
                                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: malformed reasonCode extension" : stdgo.GoString)) };
                            };
                        };
                        _rce.extensions = (_rce.extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
                    };
                };
                (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries = ((@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificateEntries.__append__(_rce?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.X509_revocationlistentry.RevocationListEntry>);
                var _rcDeprecated = @:assignType ({ serialNumber : _rce.serialNumber, revocationTime : _rce.revocationTime?.__copy__(), extensions : _rce.extensions } : stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate);
                (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates = ((@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).revokedCertificates.__append__(_rcDeprecated?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
            };
        };
        var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1163"
        if (!_tbs.readOptionalASN1((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (0 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1164"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1166"
        if (_present) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1167"
            if (!_extensions.readASN1((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1168"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extensions" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1170"
            while (!_extensions.empty()) {
                var _extension:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1172"
                if (!_extensions.readASN1((stdgo.Go.setRef(_extension, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1173"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed extension" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.crypto.x509.X509__parseextension._parseExtension(_extension), _ext:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1176"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1177"
                    return { _0 : null, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1179"
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId)) {
                    (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorityKeyId = _ext.value;
                } else if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidextensioncrlnumber._oidExtensionCRLNumber)) {
                    var _value = @:assignType (_ext.value : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).number = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1184"
                    if (!_value.readASN1Integer(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).number, _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1185"
                        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed crl number" : stdgo.GoString)) };
                    };
                };
                (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions = ((@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extensions.__append__(_ext?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L1192"
        return { _0 : _rl, _1 : (null : stdgo.Error) };
    }
