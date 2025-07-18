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
function _matchIPConstraint(_ip:stdgo._internal.net.Net_ip.IP, _constraint:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L441"
        if ((_ip.length) != (((@:checkr _constraint ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L442"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L445"
        if (_ip != null) for (_i => _ in _ip) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L446"
            {
                var _mask = @:assignType ((@:checkr _constraint ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_ip[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8) != (((@:checkr _constraint ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP[(_i : stdgo.GoInt)] & _mask : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L447"
                    return { _0 : false, _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L451"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
