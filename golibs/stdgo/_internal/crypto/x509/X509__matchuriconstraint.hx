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
function _matchURIConstraint(_uri:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _host = @:assignType ((@:checkr _uri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L420"
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L421"
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with empty host (%q) cannot be matched against constraints" : stdgo.GoString), new stdgo.AnyInterface((_uri.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L424"
        if ((stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), (":" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _uri ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L427"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L428"
                return { _0 : false, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L432"
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool) || (stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L434"
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with IP (%q) cannot be matched against constraints" : stdgo.GoString), new stdgo.AnyInterface((_uri.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L437"
        return stdgo._internal.crypto.x509.X509__matchdomainconstraint._matchDomainConstraint(_host?.__copy__(), _constraint?.__copy__());
    }
