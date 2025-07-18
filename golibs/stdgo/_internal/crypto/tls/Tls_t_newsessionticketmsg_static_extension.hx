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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_newSessionTicketMsg_asInterface) class T_newSessionTicketMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg> = _m;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _data;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1860"
        if (((_data.length) < (10 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1861"
            return false;
        };
        var _length = @:assignType ((((_data[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1865"
        if (((_data.length : stdgo.GoUInt32) - (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (_length)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1866"
            return false;
        };
        var _ticketLen = @:assignType (((_data[(8 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_data[(9 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1870"
        if (((_data.length) - (10 : stdgo.GoInt) : stdgo.GoInt) != (_ticketLen)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1871"
            return false;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket = (_data.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1876"
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1836"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1837"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _ticketLen = @:assignType ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket.length : stdgo.GoInt);
        var _length = @:assignType ((6 : stdgo.GoInt) + _ticketLen : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        _x[(8 : stdgo.GoInt)] = ((_ticketLen >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(9 : stdgo.GoInt)] = (_ticketLen : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1850"
        (_x.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _x;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1854"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
    }
}
