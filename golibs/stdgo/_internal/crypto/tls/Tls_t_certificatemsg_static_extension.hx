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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateMsg_asInterface) class T_certificateMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1319"
        if (((_data.length) < (7 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1320"
            return false;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _data;
        var _certsLen = @:assignType ((((_data[(4 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(5 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(6 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1325"
        if ((_data.length : stdgo.GoUInt32) != ((_certsLen + (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1326"
            return false;
        };
        var _numCerts = @:assignType (0 : stdgo.GoInt);
        var _d = (_data.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1331"
        while ((_certsLen > (0u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1332"
            if (((_d.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1333"
                return false;
            };
            var _certLen = @:assignType ((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1336"
            if (((_d.length : stdgo.GoUInt32) < ((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1337"
                return false;
            };
            _d = (_d.__slice__(((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
            _certsLen = (_certsLen - (((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1341"
            _numCerts++;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_numCerts : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _d = (_data.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1346"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _numCerts : Bool)) {
                var _certLen = @:assignType ((((_d[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_d[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_d[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
(@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates[(_i : stdgo.GoInt)] = (_d.__slice__((3 : stdgo.GoInt), ((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
_d = (_d.__slice__(((3u32 : stdgo.GoUInt32) + _certLen : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1352"
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1284"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1285"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1289"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates != null) for (__3 => _slice in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates) {
            _i = (_i + ((_slice.length)) : stdgo.GoInt);
        };
        var _length = @:assignType (((3 : stdgo.GoInt) + ((3 : stdgo.GoInt) * ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates.length) : stdgo.GoInt) : stdgo.GoInt) + _i : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (11 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        var _certificateOctets = @:assignType (_length - (3 : stdgo.GoInt) : stdgo.GoInt);
        _x[(4 : stdgo.GoInt)] = ((_certificateOctets >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(5 : stdgo.GoInt)] = ((_certificateOctets >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(6 : stdgo.GoInt)] = (_certificateOctets : stdgo.GoUInt8);
        var _y = (_x.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1306"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates != null) for (__4 => _slice in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates) {
            _y[(0 : stdgo.GoInt)] = (((_slice.length) >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(1 : stdgo.GoInt)] = (((_slice.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _y[(2 : stdgo.GoInt)] = (_slice.length : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1310"
            (_y.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_slice);
            _y = (_y.__slice__(((3 : stdgo.GoInt) + (_slice.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1315"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
    }
}
