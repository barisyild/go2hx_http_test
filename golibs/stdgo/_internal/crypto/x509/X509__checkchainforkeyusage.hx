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
function _checkChainForKeyUsage(_chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _keyUsages:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>):Bool {
        var _i_106:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_104:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _i_78:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usage_131:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var _iterator_6682416_124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _requestedUsage_123:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
        var nextCertBreak = false;
        var _usagesRemaining_77:stdgo.GoInt = (0 : stdgo.GoInt);
        var _usages_76:stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
        var _invalidUsage_105:stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage = -1i64;
        var _iterator_6682091_90:stdgo.GoInt = (0 : stdgo.GoInt);
        var _cert_89:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _usages_76 = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>((_keyUsages.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1126"
                    _usages_76.__copyTo__(_keyUsages);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1128"
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6681626i64;
                    } else {
                        _gotoNext = 6681648i64;
                    };
                } else if (__value__ == (6681626i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1129"
                    return false;
                    _gotoNext = 6681648i64;
                } else if (__value__ == (6681648i64)) {
                    _usagesRemaining_77 = (_usages_76.length);
                    _gotoNext = 6681847i64;
                } else if (__value__ == (6681847i64)) {
                    _i_78 = ((_chain.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    nextCertBreak = false;
                    _gotoNext = 6681858i64;
                } else if (__value__ == (6681858i64)) {
                    //"file://#L0"
                    if (!nextCertBreak && ((_i_78 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 6681895i64;
                    } else {
                        _gotoNext = 6682628i64;
                    };
                } else if (__value__ == (6681891i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_78--;
                    _gotoNext = 6681858i64;
                } else if (__value__ == (6681895i64)) {
                    _cert_89 = _chain[(_i_78 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1141"
                    if ((((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length == (0 : stdgo.GoInt)) && ((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unknownExtKeyUsage.length == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 6681985i64;
                    } else {
                        _gotoNext = 6682075i64;
                    };
                } else if (__value__ == (6681985i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_78--;
                    _gotoNext = 6681858i64;
                } else if (__value__ == (6682075i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length)) {
                        _gotoNext = 6682233i64;
                    } else {
                        _gotoNext = 6682239i64;
                    };
                } else if (__value__ == (6682079i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1146"
                    _iterator_6682091_90++;
                    _gotoNext = 6682234i64;
                } else if (__value__ == (6682114i64)) {
                    _usage_104 = (@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage[(_iterator_6682091_90 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1147"
                    if (_usage_104 == ((0 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 6682146i64;
                    } else {
                        _gotoNext = 6682079i64;
                    };
                } else if (__value__ == (6682146i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1139"
                    _i_78--;
                    _gotoNext = 6681858i64;
                } else if (__value__ == (6682233i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_6682091_90 = @:binopAssign __tmp__0;
                        _usage_104 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6682234i64;
                } else if (__value__ == (6682234i64)) {
                    //"file://#L0"
                    if (_iterator_6682091_90 < ((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length)) {
                        _gotoNext = 6682114i64;
                    } else {
                        _gotoNext = 6682239i64;
                    };
                } else if (__value__ == (6682239i64)) {
                    _gotoNext = 6682277i64;
                } else if (__value__ == (6682277i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    if ((0i64 : stdgo.GoInt) < (_usages_76.length)) {
                        _gotoNext = 6682620i64;
                    } else {
                        _gotoNext = 6681891i64;
                    };
                } else if (__value__ == (6682303i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_106++;
                    _gotoNext = 6682621i64;
                } else if (__value__ == (6682337i64)) {
                    _requestedUsage_123 = _usages_76[(_i_106 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1157"
                    if (_requestedUsage_123 == ((-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage))) {
                        _gotoNext = 6682376i64;
                    } else {
                        _gotoNext = 6682400i64;
                    };
                } else if (__value__ == (6682376i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_106++;
                    _gotoNext = 6682621i64;
                } else if (__value__ == (6682400i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length)) {
                        _gotoNext = 6682515i64;
                    } else {
                        _gotoNext = 6682522i64;
                    };
                } else if (__value__ == (6682404i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1161"
                    _iterator_6682416_124++;
                    _gotoNext = 6682516i64;
                } else if (__value__ == (6682439i64)) {
                    _usage_131 = (@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage[(_iterator_6682416_124 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1162"
                    if (_requestedUsage_123 == (_usage_131)) {
                        _gotoNext = 6682472i64;
                    } else {
                        _gotoNext = 6682404i64;
                    };
                } else if (__value__ == (6682472i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1156"
                    _i_106++;
                    _gotoNext = 6682621i64;
                } else if (__value__ == (6682515i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage[(0i64 : stdgo.GoInt)];
                        _iterator_6682416_124 = @:binopAssign __tmp__0;
                        _usage_131 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6682516i64;
                } else if (__value__ == (6682516i64)) {
                    //"file://#L0"
                    if (_iterator_6682416_124 < ((@:checkr _cert_89 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).extKeyUsage.length)) {
                        _gotoNext = 6682439i64;
                    } else {
                        _gotoNext = 6682522i64;
                    };
                } else if (__value__ == (6682522i64)) {
                    _usages_76[(_i_106 : stdgo.GoInt)] = (-1 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1168"
                    _usagesRemaining_77--;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1169"
                    if (_usagesRemaining_77 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6682595i64;
                    } else {
                        _gotoNext = 6682303i64;
                    };
                } else if (__value__ == (6682595i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1170"
                    return false;
                    _gotoNext = 6682303i64;
                } else if (__value__ == (6682620i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _usages_76[(0i64 : stdgo.GoInt)];
                        _i_106 = @:binopAssign __tmp__0;
                        _requestedUsage_123 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6682621i64;
                } else if (__value__ == (6682621i64)) {
                    //"file://#L0"
                    if (_i_106 < (_usages_76.length)) {
                        _gotoNext = 6682337i64;
                    } else {
                        _gotoNext = 6681891i64;
                    };
                } else if (__value__ == (6682628i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L1175"
                    return true;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
