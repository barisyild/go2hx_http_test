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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHelloMsg_asInterface) class T_serverHelloMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg);
            x._raw = __tmp__?._raw;
            x._vers = __tmp__?._vers;
            x._random = __tmp__?._random;
            x._sessionId = __tmp__?._sessionId;
            x._cipherSuite = __tmp__?._cipherSuite;
            x._compressionMethod = __tmp__?._compressionMethod;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._ticketSupported = __tmp__?._ticketSupported;
            x._secureRenegotiationSupported = __tmp__?._secureRenegotiationSupported;
            x._secureRenegotiation = __tmp__?._secureRenegotiation;
            x._extendedMasterSecret = __tmp__?._extendedMasterSecret;
            x._alpnProtocol = __tmp__?._alpnProtocol;
            x._scts = __tmp__?._scts;
            x._supportedVersion = __tmp__?._supportedVersion;
            x._serverShare = __tmp__?._serverShare;
            x._selectedIdentityPresent = __tmp__?._selectedIdentityPresent;
            x._selectedIdentity = __tmp__?._selectedIdentity;
            x._supportedPoints = __tmp__?._supportedPoints;
            x._cookie = __tmp__?._cookie;
            x._selectedGroup = __tmp__?._selectedGroup;
        };
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L777"
        if ((((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers)) : Bool) || !_s.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !_s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite)) : Bool) || !_s.readUint8(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L782"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L785"
        if (_s.empty()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L787"
            return true;
        };
        var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L791"
        if ((!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || !_s.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L792"
            return false;
        };
        var _seenExts = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, Bool>) : stdgo.GoMap<stdgo.GoUInt16, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L796"
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L799"
            if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L801"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L804"
            if ((_seenExts[_extension] ?? false)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L805"
                return false;
            };
            _seenExts[_extension] = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L809"
            {
                final __value__ = _extension;
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = true;
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported = true;
                } else if (__value__ == ((65281 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L815"
                    if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L816"
                        return false;
                    };
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported = true;
                } else if (__value__ == ((23 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret = true;
                } else if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L823"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _protoList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L824"
                        return false;
                    };
                    var _proto:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L827"
                    if (((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L829"
                        return false;
                    };
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol = (_proto : stdgo.GoString)?.__copy__();
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    var _sctList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L834"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sctList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L835"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L837"
                    while (!_sctList.empty()) {
                        var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L839"
                        if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_sct, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L841"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts.__append__(_sct) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                    };
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L846"
                    if (!_extData.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L847"
                        return false;
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L850"
                    if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L852"
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L857"
                    if ((_extData.length) == ((2 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L858"
                        if (!_extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16)))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L859"
                            return false;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L862"
                        if ((!_extData.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._data, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L864"
                            return false;
                        };
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentityPresent = true;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L869"
                    if (!_extData.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentity))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L870"
                        return false;
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L874"
                    if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L876"
                        return false;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L880"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L883"
            if (!_extData.empty()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L884"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L888"
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L654"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L655"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L659"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L660"
            _exts.addUint16((5 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L661"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L663"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L664"
            _exts.addUint16((35 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L665"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L667"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L668"
            _exts.addUint16((65281 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L669"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L670"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L671"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L675"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L676"
            _exts.addUint16((23 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L677"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L679"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L680"
            _exts.addUint16((16 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L681"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L682"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L683"
                    _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L684"
                        _exts.addBytes(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L689"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L690"
            _exts.addUint16((18 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L691"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L692"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L693"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts != null) for (__3 => _sct in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L694"
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L695"
                            _exts.addBytes(_sct);
                        });
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L701"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion != ((0 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L702"
            _exts.addUint16((43 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L703"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L704"
                _exts.addUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion);
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L707"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L708"
            _exts.addUint16((51 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L709"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L710"
                _exts.addUint16(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._group : stdgo.GoUInt16));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L711"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L712"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverShare._data);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L716"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentityPresent) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L717"
            _exts.addUint16((41 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L718"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L719"
                _exts.addUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentity);
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L723"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L724"
            _exts.addUint16((44 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L725"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L726"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L727"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L731"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup != ((0 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L732"
            _exts.addUint16((51 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L733"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L734"
                _exts.addUint16(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedGroup : stdgo.GoUInt16));
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L737"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L738"
            _exts.addUint16((11 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L739"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L740"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L741"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints);
                });
            });
        };
        var __tmp__ = _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L747"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L748"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L752"
        _b.addUint8((2 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L753"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L754"
            _b.addUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L755"
            stdgo._internal.crypto.tls.Tls__addbyteswithlength._addBytesWithLength(_b, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (32 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L756"
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L757"
                _b.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId);
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L759"
            _b.addUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L760"
            _b.addUint8((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L762"
            if (((_extBytes.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L763"
                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L764"
                    _b.addBytes(_extBytes);
                });
            };
        });
        {
            var __tmp__ = _b.bytes();
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L770"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : _err };
    }
}
