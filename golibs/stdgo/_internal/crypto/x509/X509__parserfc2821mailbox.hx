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
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_65:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_70:Bool = false;
        var _twoDots_69:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_67:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_66:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L224"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6654651i64;
                    } else {
                        _gotoNext = 6654682i64;
                    };
                } else if (__value__ == (6654651i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L225"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6654682i64;
                } else if (__value__ == (6654682i64)) {
                    _localPartBytes_65 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L230"
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 6654745i64;
                    } else {
                        _gotoNext = 6656249i64;
                    };
                } else if (__value__ == (6654745i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 6655234i64;
                } else if (__value__ == (6655234i64)) {
                    0i64;
                    quotedStringBreak = false;
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6655250i64)) {
                    //"file://#L0"
                    if (!quotedStringBreak) {
                        _gotoNext = 6655254i64;
                    } else {
                        _gotoNext = 6657594i64;
                    };
                } else if (__value__ == (6655254i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L244"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6655275i64;
                    } else {
                        _gotoNext = 6655311i64;
                    };
                } else if (__value__ == (6655275i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L245"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6655311i64;
                } else if (__value__ == (6655311i64)) {
                    _c_66 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 6655341i64;
                } else if (__value__ == (6655341i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L250"
                    if (_c_66 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 6655353i64;
                    } else if (_c_66 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 6655395i64;
                    } else if (((((((((_c_66 == ((11 : stdgo.GoUInt8)) || _c_66 == ((12 : stdgo.GoUInt8)) : Bool) || _c_66 == ((32 : stdgo.GoUInt8)) : Bool) || _c_66 == ((33 : stdgo.GoUInt8)) : Bool) || _c_66 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_66 : Bool) && (_c_66 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_66 : Bool) && (_c_66 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_66 : Bool) && (_c_66 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_66 : Bool) && (_c_66 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 6655718i64;
                    } else {
                        _gotoNext = 6656197i64;
                    };
                } else if (__value__ == (6655353i64)) {
                    quotedStringBreak = true;
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6655395i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L256"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6655450i64;
                    } else {
                        _gotoNext = 6655489i64;
                    };
                } else if (__value__ == (6655450i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L257"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6655489i64;
                } else if (__value__ == (6655489i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L259"
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 6655597i64;
                    } else {
                        _gotoNext = 6655679i64;
                    };
                } else if (__value__ == (6655597i64)) {
                    _localPartBytes_65 = (_localPartBytes_65.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6655679i64)) {
                    _gotoNext = 6655679i64;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L266"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    0i64;
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6655718i64)) {
                    _localPartBytes_65 = (_localPartBytes_65.__append__(_c_66) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6656197i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L287"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6655250i64;
                } else if (__value__ == (6656249i64)) {
                    _gotoNext = 6656249i64;
                    _gotoNext = 6656274i64;
                } else if (__value__ == (6656274i64)) {
                    0i64;
                    nextCharBreak = false;
                    _gotoNext = 6656286i64;
                } else if (__value__ == (6656286i64)) {
                    //"file://#L0"
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 6656302i64;
                    } else {
                        _gotoNext = 6657159i64;
                    };
                } else if (__value__ == (6656302i64)) {
                    _c_67 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 6656363i64;
                } else if (__value__ == (6656363i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L297"
                    if (_c_67 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 6656375i64;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_67 : Bool) && (_c_67 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_67 : Bool) && (_c_67 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_67 : Bool) && (_c_67 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_67 == ((33 : stdgo.GoUInt8)) : Bool) || _c_67 == ((35 : stdgo.GoUInt8)) : Bool) || _c_67 == ((36 : stdgo.GoUInt8)) : Bool) || _c_67 == ((37 : stdgo.GoUInt8)) : Bool) || _c_67 == ((38 : stdgo.GoUInt8)) : Bool) || _c_67 == ((39 : stdgo.GoUInt8)) : Bool) || _c_67 == ((42 : stdgo.GoUInt8)) : Bool) || _c_67 == ((43 : stdgo.GoUInt8)) : Bool) || _c_67 == ((45 : stdgo.GoUInt8)) : Bool) || _c_67 == ((47 : stdgo.GoUInt8)) : Bool) || _c_67 == ((61 : stdgo.GoUInt8)) : Bool) || _c_67 == ((63 : stdgo.GoUInt8)) : Bool) || _c_67 == ((94 : stdgo.GoUInt8)) : Bool) || _c_67 == ((95 : stdgo.GoUInt8)) : Bool) || _c_67 == ((96 : stdgo.GoUInt8)) : Bool) || _c_67 == ((123 : stdgo.GoUInt8)) : Bool) || _c_67 == ((124 : stdgo.GoUInt8)) : Bool) || _c_67 == ((125 : stdgo.GoUInt8)) : Bool) || _c_67 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_67 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 6656698i64;
                    } else {
                        _gotoNext = 6657119i64;
                    };
                } else if (__value__ == (6656375i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L305"
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6656643i64;
                    } else {
                        _gotoNext = 6656682i64;
                    };
                } else if (__value__ == (6656643i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L306"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6656682i64;
                } else if (__value__ == (6656682i64)) {
                    _gotoNext = 6656698i64;
                } else if (__value__ == (6656698i64)) {
                    _localPartBytes_65 = (_localPartBytes_65.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 6656286i64;
                } else if (__value__ == (6657119i64)) {
                    nextCharBreak = true;
                    _gotoNext = 6656286i64;
                } else if (__value__ == (6657159i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L326"
                    if ((_localPartBytes_65.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 6657187i64;
                    } else {
                        _gotoNext = 6657403i64;
                    };
                } else if (__value__ == (6657187i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L327"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6657403i64;
                } else if (__value__ == (6657403i64)) {
                    _twoDots_69 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L335"
                    if (((_localPartBytes_65[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_65[((_localPartBytes_65.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_65, _twoDots_69) : Bool)) {
                        _gotoNext = 6657558i64;
                    } else {
                        _gotoNext = 6657594i64;
                    };
                } else if (__value__ == (6657558i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L338"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6657594i64;
                } else if (__value__ == (6657594i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L342"
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 6657626i64;
                    } else {
                        _gotoNext = 6657656i64;
                    };
                } else if (__value__ == (6657626i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L343"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6657656i64;
                } else if (__value__ == (6657656i64)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L350"
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_70 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_70) {
                            _gotoNext = 6657867i64;
                        } else {
                            _gotoNext = 6657898i64;
                        };
                    };
                } else if (__value__ == (6657867i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L351"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 6657898i64;
                } else if (__value__ == (6657898i64)) {
                    _mailbox._local = (_localPartBytes_65 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/verify.go#L356"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
