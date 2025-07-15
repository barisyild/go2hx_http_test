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
function _parseTime(_der:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var _t:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L171"
        if ((@:checkr _der ?? throw stdgo.Error._nullPointerDereference.__underlying__()).peekASN1Tag((23 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L173"
            if (!_der.readASN1UTCTime((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime })) : stdgo.Ref<stdgo._internal.time.Time_time.Time>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L174"
                return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed UTCTime" : stdgo.GoString)) };
            };
        } else if ((@:checkr _der ?? throw stdgo.Error._nullPointerDereference.__underlying__()).peekASN1Tag((24 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L177"
            if (!_der.readASN1GeneralizedTime((stdgo.Go.setRef(_t, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime })) : stdgo.Ref<stdgo._internal.time.Time_time.Time>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L178"
                return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed GeneralizedTime" : stdgo.GoString)) };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L181"
            return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported time format" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/parser.go#L183"
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
