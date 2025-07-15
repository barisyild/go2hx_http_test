package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golangdotorg.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateRequestMsg_asInterface) class T_certificateRequestMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg> = _m;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _data;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1714"
        if (((_data.length) < (5 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1715"
            return false;
        };
        var _length = @:assignType ((((_data[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1719"
        if (((_data.length : stdgo.GoUInt32) - (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (_length)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1720"
            return false;
        };
        var _numCertTypes = @:assignType (_data[(4 : stdgo.GoInt)] : stdgo.GoInt);
        _data = (_data.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1725"
        if (((_numCertTypes == (0 : stdgo.GoInt)) || ((_data.length) <= _numCertTypes : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1726"
            return false;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes = (new stdgo.Slice<stdgo.GoUInt8>((_numCertTypes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1730"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes.__copyTo__(_data) != (_numCertTypes)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1731"
            return false;
        };
        _data = (_data.__slice__(_numCertTypes) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1736"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1737"
            if (((_data.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1738"
                return false;
            };
            var _sigAndHashLen = @:assignType (((_data[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_data[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
            _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1742"
            if ((_sigAndHashLen & (1 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1743"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1745"
            if (((_data.length) < (_sigAndHashLen : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1746"
                return false;
            };
            var _numSigAlgos = @:assignType (_sigAndHashLen / (2 : stdgo.GoUInt16) : stdgo.GoUInt16);
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>((_numSigAlgos : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1750"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms[(_i : stdgo.GoInt)] = (((_data[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) << (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) | (_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
                _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1756"
        if (((_data.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1757"
            return false;
        };
        var _casLength = @:assignType (((_data[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_data[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1761"
        if (((_data.length) < (_casLength : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1762"
            return false;
        };
        var _cas = (new stdgo.Slice<stdgo.GoUInt8>((_casLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1765"
        _cas.__copyTo__(_data);
        _data = (_data.__slice__(_casLength) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1769"
        while (((_cas.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1770"
            if (((_cas.length) < (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1771"
                return false;
            };
            var _caLen = @:assignType (((_cas[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_cas[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
            _cas = (_cas.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1776"
            if (((_cas.length) < (_caLen : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1777"
                return false;
            };
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities.__append__((_cas.__slice__(0, _caLen) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            _cas = (_cas.__slice__(_caLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1784"
        return (_data.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1657"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1658"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _length = @:assignType (((1 : stdgo.GoInt) + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes.length) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt);
        var _casLength = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1664"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities != null) for (__3 => _ca in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities) {
            _casLength = (_casLength + (((2 : stdgo.GoInt) + (_ca.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        _length = (_length + (_casLength) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1669"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
            _length = (_length + (((2 : stdgo.GoInt) + ((2 : stdgo.GoInt) * ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        _x[(4 : stdgo.GoInt)] = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes.length : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1681"
        (_x.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes);
        var _y = (_x.__slice__(((5 : stdgo.GoInt) + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1684"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
            var _n = @:assignType (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
            _y[(0 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
            _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1689"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (__4 => _sigAlgo in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
                _y[(0 : stdgo.GoInt)] = ((_sigAlgo >> (8i64 : stdgo.GoUInt64) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoUInt8);
                _y[(1 : stdgo.GoInt)] = (_sigAlgo : stdgo.GoUInt8);
                _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _y[(0 : stdgo.GoInt)] = ((_casLength >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _y[(1 : stdgo.GoInt)] = (_casLength : stdgo.GoUInt8);
        _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1699"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities != null) for (__4 => _ca in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities) {
            _y[(0 : stdgo.GoInt)] = (((_ca.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (_ca.length : stdgo.GoUInt8);
            _y = (_y.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1703"
            _y.__copyTo__(_ca);
            _y = (_y.__slice__((_ca.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1708"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
    }
}
