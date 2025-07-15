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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateRequestMsgTLS13_asInterface) class T_certificateRequestMsgTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13);
            x._raw = __tmp__?._raw;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._scts = __tmp__?._scts;
            x._supportedSignatureAlgorithms = __tmp__?._supportedSignatureAlgorithms;
            x._supportedSignatureAlgorithmsCert = __tmp__?._supportedSignatureAlgorithmsCert;
            x._certificateAuthorities = __tmp__?._certificateAuthorities;
        };
        var _s = @:assignType (_data : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _context:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_), _extensions:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1207"
        if (((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint8LengthPrefixed((stdgo.Go.setRef(_context, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_context.empty() : Bool) || !_s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1211"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1214"
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1217"
            if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1219"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1222"
            {
                final __value__ = _extension;
                if (__value__ == ((5 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = true;
                } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = true;
                } else if (__value__ == ((13 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1229"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1230"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1232"
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1234"
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1235"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                } else if (__value__ == ((50 : stdgo.GoUInt16))) {
                    var _sigAndAlgs:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1242"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sigAndAlgs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sigAndAlgs.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1243"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1245"
                    while (!_sigAndAlgs.empty()) {
                        var _sigAndAlg:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), _sigAndAlg__pointer__ = stdgo.Go.pointer(_sigAndAlg);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1247"
                        if (!_sigAndAlgs.readUint16(_sigAndAlg__pointer__)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1248"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.__append__((_sigAndAlg : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
                    };
                } else if (__value__ == ((47 : stdgo.GoUInt16))) {
                    var _auths:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1255"
                    if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_auths, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _auths.empty() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1256"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1258"
                    while (!_auths.empty()) {
                        var _ca:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1260"
                        if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_auths, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_ca, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_ca.length == (0 : stdgo.GoInt)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1261"
                            return false;
                        };
                        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities.__append__(_ca) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1267"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1270"
            if (!_extData.empty()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1271"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1275"
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13> = _m;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1137"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1138"
            return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1142"
        _b.addUint8((13 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1143"
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1146"
            _b.addUint8((0 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1148"
            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1149"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1150"
                    _b.addUint16((5 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1151"
                    _b.addUint16((0 : stdgo.GoUInt16));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1153"
                if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1159"
                    _b.addUint16((18 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1160"
                    _b.addUint16((0 : stdgo.GoUInt16));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1162"
                if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1163"
                    _b.addUint16((13 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1164"
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1165"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1166"
                            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms != null) for (__3 => _sigAlgo in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1167"
                                _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1172"
                if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1173"
                    _b.addUint16((50 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1174"
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1175"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1176"
                            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert != null) for (__3 => _sigAlgo in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithmsCert) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1177"
                                _b.addUint16((_sigAlgo : stdgo.GoUInt16));
                            };
                        });
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1182"
                if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1183"
                    _b.addUint16((47 : stdgo.GoUInt16));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1184"
                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1185"
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1186"
                            if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities != null) for (__3 => _ca in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1187"
                                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1188"
                                    _b.addBytes(_ca);
                                });
                            };
                        });
                    });
                };
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.bytes();
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_messages.go#L1199"
        return { _0 : (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raw, _1 : _err };
    }
}
