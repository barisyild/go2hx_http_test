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
function _asn1BitLength(_bitString:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _bitLen = @:assignType ((_bitString.length) * (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1005"
        if (_bitString != null) for (_i => _ in _bitString) {
            var _b = @:assignType (_bitString[(((_bitString.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1008"
            {
                var _bit = @:assignType ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_bit < (8u32 : stdgo.GoUInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1009"
                    if ((((_b >> _bit : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((1 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1010"
                        return _bitLen;
                    };
//"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1012"
                    _bitLen--;
                    _bit++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1016"
        return (0 : stdgo.GoInt);
    }
