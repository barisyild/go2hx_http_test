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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHelloMsg_asInterface) class T_clientHelloMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg);
            x._raw = __tmp__?._raw;
            x._vers = __tmp__?._vers;
            x._random = __tmp__?._random;
            x._sessionId = __tmp__?._sessionId;
            x._cipherSuites = __tmp__?._cipherSuites;
            x._compressionMethods = __tmp__?._compressionMethods;
            x._serverName = __tmp__?._serverName;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._supportedCurves = __tmp__?._supportedCurves;
            x._supportedPoints = __tmp__?._supportedPoints;
            x._ticketSupported = __tmp__?._ticketSupported;
            x._sessionTicket = __tmp__?._sessionTicket;
            x._supportedSignatureAlgorithms = __tmp__?._supportedSignatureAlgorithms;
            x._supportedSignatureAlgorithmsCert = __tmp__?._supportedSignatureAlgorithmsCert;
            x._secureRenegotiationSupported = __tmp__?._secureRenegotiationSupported;
            x._secureRenegotiation = __tmp__?._secureRenegotiation;
            x._extendedMasterSecret = __tmp__?._extendedMasterSecret;
            x._alpnProtocols = __tmp__?._alpnProtocols;
            x._scts = __tmp__?._scts;
            x._supportedVersions = __tmp__?._supportedVersions;
            x._cookie = __tmp__?._cookie;
            x._keyShares = __tmp__?._keyShares;
            x._earlyData = __tmp__?._earlyData;
            x._pskModes = __tmp__?._pskModes;
            x._pskIdentities = __tmp__?._pskIdentities;
            x._pskBinders = __tmp__?._pskBinders;
            x._quicTransportParameters = __tmp__?._quicTransportParameters;
        };
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L373"
        if ((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint16(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers)) : Bool) || !_s.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (32 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L376"
            return false;
        };
        var _cipherSuites:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L380"
        if (!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_cipherSuites, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L381"
            return false;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L385"
        while (!_cipherSuites.empty()) {
            var _suite:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _suite__pointer__ = stdgo.Go.pointer(_suite);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L387"
            if (!_cipherSuites.readUint16(_suite__pointer__)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L388"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L390"
            if (_suite == ((255 : stdgo.GoUInt16))) {
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported = true;
            };
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.__append__(_suite) : stdgo.Slice<stdgo.GoUInt16>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L396"
        if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L397"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L400"
        if (_s.empty()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L402"
            return true;
        };
        var _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L406"
        if ((!_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || !_s.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L407"
            return false;
        };
        var _seenExts = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, Bool>) : stdgo.GoMap<stdgo.GoUInt16, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L411"
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L414"
            if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L416"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L419"
            if ((_seenExts[_extension] ?? false)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L420"
                return false;
            };
            _seenExts[_extension] = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L424"
            {
                final __value__ = _extension;
                if (__value__ == ((0 : stdgo.GoUInt16))) {
                    var _nameList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L428"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_nameList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _nameList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L429"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L431"
                    while (!_nameList.empty()) {
                        var _nameType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _nameType__pointer__ = stdgo.Go.pointer(_nameType);
                        var _serverName:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L434"
                        if (((!_nameList.readUint8(_nameType__pointer__) || !_nameList.readUint16LengthPrefixed((stdgo.Go.setRef(_serverName, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || _serverName.empty() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L437"
                            return false;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L439"
                        if (_nameType != ((0 : stdgo.GoUInt8))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L440"
                            continue;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L442"
                        if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName.length) != ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L444"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName = (_serverName : stdgo.GoString)?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L448"
                        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName?.__copy__(), ("." : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L449"
                            return false;
                        };
                    };
                } else if (__value__ == ((5 : stdgo.GoUInt16))) {
                    var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                    var _ignored:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L456"
                    if (((!_extData.readUint8(_statusType__pointer__) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_ignored, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L459"
                        return false;
                    };
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = _statusType == ((1 : stdgo.GoUInt8));
                } else if (__value__ == ((10 : stdgo.GoUInt16))) {
                    var _curves:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L465"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_curves, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _curves.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L466"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L468"
                    while (!_curves.empty()) {
                        var _curve:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _curve__pointer__ = stdgo.Go.pointer(_curve);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L470"
                        if (!_curves.readUint16(_curve__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L471"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves.__append__((_curve : stdgo._internal.crypto.tls.Tls_curveid.CurveID)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>);
                    };
                } else if (__value__ == ((11 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L477"
                    if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints.length == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L479"
                        return false;
                    };
                } else if (__value__ == ((35 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported = true;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L484"
                    _extData.readBytes((stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_extData.length));
                } else if (__value__ == ((13 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L488"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L489"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L491"
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L493"
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L494"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                } else if (__value__ == ((50 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L502"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L503"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L505"
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L507"
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L508"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                } else if (__value__ == ((65281 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L515"
                    if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L516"
                        return false;
                    };
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported = true;
                } else if (__value__ == ((23 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret = true;
                } else if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L525"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _protoList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L526"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L528"
                    while (!_protoList.empty()) {
                        var _proto:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L530"
                        if ((!_protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L531"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols.__append__((_proto : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = true;
                } else if (__value__ == ((43 : stdgo.GoUInt16))) {
                    var _versList:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L541"
                    if ((!_extData.readUint8LengthPrefixed((stdgo.Go.setRef(_versList, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _versList.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L542"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L544"
                    while (!_versList.empty()) {
                        var _vers:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _vers__pointer__ = stdgo.Go.pointer(_vers);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L546"
                        if (!_versList.readUint16(_vers__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L547"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.__append__(_vers) : stdgo.Slice<stdgo.GoUInt16>);
                    };
                } else if (__value__ == ((44 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L553"
                    if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie.length == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L555"
                        return false;
                    };
                } else if (__value__ == ((51 : stdgo.GoUInt16))) {
                    var _clientShares:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L560"
                    if (!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L561"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L563"
                    while (!_clientShares.empty()) {
                        var _ks:stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L565"
                        if (((!_clientShares.readUint16(new stdgo.Pointer<stdgo.GoUInt16>(() -> (stdgo.Go.pointer(_ks._group).value : stdgo.GoUInt16), v -> (stdgo.Go.pointer(_ks._group).value = (v : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoUInt16))) || !stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_clientShares, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_ks._data, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_ks._data.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L568"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares.__append__(_ks?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
                    };
                } else if (__value__ == ((42 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = true;
                } else if (__value__ == ((45 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L577"
                    if (!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L578"
                        return false;
                    };
                } else if (__value__ == ((57 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters = (new stdgo.Slice<stdgo.GoUInt8>((_extData.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L582"
                    if (!_extData.copyBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L583"
                        return false;
                    };
                } else if (__value__ == ((41 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L587"
                    if (!_extensions.empty()) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L588"
                        return false;
                    };
                    var _identities:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L591"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_identities, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _identities.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L592"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L594"
                    while (!_identities.empty()) {
                        var _psk:stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity = ({} : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L596"
                        if (((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_identities, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_psk._label, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !_identities.readUint32(stdgo.Go.pointer(_psk._obfuscatedTicketAge)) : Bool) || (_psk._label.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L599"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.__append__(_psk?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
                    };
                    var _binders:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L604"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_binders, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _binders.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L605"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L607"
                    while (!_binders.empty()) {
                        var _binder:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L609"
                        if ((!stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_binders, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_binder, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_binder.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L611"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders.__append__(_binder) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L617"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L620"
            if (!_extData.empty()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L621"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L625"
        return true;
    }
    @:keep
    @:tdfield
    static public function _updateBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>, _pskBinders:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L338"
        if ((_pskBinders.length) != (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L339"
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L341"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L342"
            if ((_pskBinders[(_i : stdgo.GoInt)].length) != (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders[(_i : stdgo.GoInt)].length))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L343"
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: pskBinders length mismatch" : stdgo.GoString));
            };
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders = _pskBinders;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L347"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            var __tmp__ = _m._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L349"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L350"
                return _err;
            };
            var _lenWithoutBinders = @:assignType (_helloBytes.length : stdgo.GoInt);
            var _b = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_newfixedbuilder.newFixedBuilder(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw.__slice__(0, _lenWithoutBinders) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L354"
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L355"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders != null) for (__3 => _binder in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L356"
                    _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L357"
                        _b.addBytes(_binder);
                    });
                };
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L361"
            {
                var __tmp__ = _b.bytes(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || (_out.length != ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw.length)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L362"
                    return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to update binders" : stdgo.GoString));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L366"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalWithoutBinders( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        var _bindersLen = @:assignType (2 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L322"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders != null) for (__3 => _binder in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders) {
            _bindersLen = (_bindersLen + ((1 : stdgo.GoInt)) : stdgo.GoInt);
            _bindersLen = (_bindersLen + ((_binder.length)) : stdgo.GoInt);
        };
        var __tmp__ = _m._marshal(), _fullMessage:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L328"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L329"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L331"
        return { _0 : (_fullMessage.__slice__(0, ((_fullMessage.length) - _bindersLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L101"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L102"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _exts:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L106"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L108"
            _exts.addUint16((0 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L109"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L110"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L111"
                    _exts.addUint8((0 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L112"
                    _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L113"
                        _exts.addBytes(((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName : stdgo.Slice<stdgo.GoUInt8>));
                    });
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L118"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L120"
            _exts.addUint16((5 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L121"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L122"
                _exts.addUint8((1 : stdgo.GoUInt8));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L123"
                _exts.addUint16((0 : stdgo.GoUInt16));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L124"
                _exts.addUint16((0 : stdgo.GoUInt16));
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L127"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L129"
            _exts.addUint16((10 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L130"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L131"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L132"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves != null) for (__3 => _curve in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L133"
                        _exts.addUint16((_curve : stdgo.GoUInt16));
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L138"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L140"
            _exts.addUint16((11 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L141"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L142"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L143"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L147"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L149"
            _exts.addUint16((35 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L150"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L151"
                _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket);
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L154"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L156"
            _exts.addUint16((13 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L157"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L158"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L159"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (__3 => _sigAlgo in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L160"
                        _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L165"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L167"
            _exts.addUint16((50 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L168"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L169"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L170"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert != null) for (__3 => _sigAlgo in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L171"
                        _exts.addUint16((_sigAlgo : stdgo.GoUInt16));
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L176"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L178"
            _exts.addUint16((65281 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L179"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L180"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L181"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L185"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L187"
            _exts.addUint16((23 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L188"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L190"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L192"
            _exts.addUint16((16 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L193"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L194"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L195"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols != null) for (__3 => _proto in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L196"
                        _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L197"
                            _exts.addBytes((_proto : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L203"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L205"
            _exts.addUint16((18 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L206"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L208"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L210"
            _exts.addUint16((43 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L211"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L212"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L213"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions != null) for (__3 => _vers in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L214"
                        _exts.addUint16(_vers);
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L219"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L221"
            _exts.addUint16((44 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L222"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L223"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L224"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cookie);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L228"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L230"
            _exts.addUint16((51 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L231"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L232"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L233"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares != null) for (__3 => _ks in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L234"
                        _exts.addUint16((_ks._group : stdgo.GoUInt16));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L235"
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L236"
                            _exts.addBytes(_ks._data);
                        });
                    };
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L242"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L244"
            _exts.addUint16((42 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L245"
            _exts.addUint16((0 : stdgo.GoUInt16));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L247"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L249"
            _exts.addUint16((45 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L250"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L251"
                _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L252"
                    _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes);
                });
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L256"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L258"
            _exts.addUint16((57 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L259"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L260"
                _exts.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters);
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L263"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L265"
            _exts.addUint16((41 : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L266"
            _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L267"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L268"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities != null) for (__3 => _psk in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L269"
                        _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L270"
                            _exts.addBytes(_psk._label);
                        });
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L272"
                        _exts.addUint32(_psk._obfuscatedTicketAge);
                    };
                });
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L275"
                _exts.addUint16LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L276"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders != null) for (__3 => _binder in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L277"
                        _exts.addUint8LengthPrefixed(function(_exts:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L278"
                            _exts.addBytes(_binder);
                        });
                    };
                });
            });
        };
        var __tmp__ = _exts.bytes(), _extBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L285"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L286"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L290"
        _b.addUint8((1 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L291"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L292"
            _b.addUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L293"
            stdgo._internal.crypto.tls.Tls__addbyteswithlength._addBytesWithLength(_b, (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (32 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L294"
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L295"
                _b.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId);
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L297"
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L298"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites != null) for (__3 => _suite in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L299"
                    _b.addUint16(_suite);
                };
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L302"
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L303"
                _b.addBytes((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods);
            });
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L306"
            if (((_extBytes.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L307"
                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L308"
                    _b.addBytes(_extBytes);
                });
            };
        });
        {
            var __tmp__ = _b.bytes();
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L314"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : _err };
    }
}
