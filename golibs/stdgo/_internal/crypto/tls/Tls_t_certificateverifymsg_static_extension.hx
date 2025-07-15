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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateVerifyMsg_asInterface) class T_certificateVerifyMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg> = _m;
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = _data;
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1819"
        if (!_s.skip((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1820"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1822"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1823"
            if (!_s.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm).value = (v : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme) : stdgo.GoUInt16)))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1824"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1827"
        return (stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) && _s.empty() : Bool);
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1795"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1796"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1800"
        _b.addUint8((15 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1801"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1802"
            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1803"
                _b.addUint16(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm : stdgo.GoUInt16));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1805"
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1806"
                _b.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature);
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.bytes();
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1812"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : _err };
    }
}
