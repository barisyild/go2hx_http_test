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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_encryptedExtensionsMsg_asInterface) class T_encryptedExtensionsMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg);
            x._raw = __tmp__?._raw;
            x._alpnProtocol = __tmp__?._alpnProtocol;
            x._quicTransportParameters = __tmp__?._quicTransportParameters;
            x._earlyData = __tmp__?._earlyData;
        };
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L942"
        if (((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L944"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L947"
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L950"
            if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L952"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L955"
            {
                final __value__ = _extension;
                if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L958"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _protoList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L959"
                        return false;
                    };
                    var _proto:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L962"
                    if (((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L964"
                        return false;
                    };
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol = (_proto : stdgo.GoString)?.__copy__();
                } else if (__value__ == ((57 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters = (new stdgo.Slice<stdgo.GoUInt8>((_extData.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L969"
                    if (!_extData.copyBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L970"
                        return false;
                    };
                } else if (__value__ == ((42 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = true;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L977"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L980"
            if (!_extData.empty()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L981"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L985"
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L899"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L900"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L904"
        _b.addUint8((8 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L905"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L906"
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L907"
                if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L908"
                    _b.addUint16((16 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L909"
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L910"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L911"
                            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L912"
                                _b.addBytes(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
                            });
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L917"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L919"
                    _b.addUint16((57 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L920"
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L921"
                        _b.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters);
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L924"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L926"
                    _b.addUint16((42 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L927"
                    _b.addUint16((0 : stdgo.GoUInt16));
                };
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.bytes();
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L934"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : _err };
    }
}
