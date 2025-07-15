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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_cipherSuiteTLS13_asInterface) class T_cipherSuiteTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _exportKeyingMaterial( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _expMasterSecret = _c._deriveSecret(_masterSecret, ("exp master" : stdgo.GoString), _transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L112"
        return function(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            var _secret = _c._deriveSecret(_expMasterSecret, _label?.__copy__(), (null : stdgo._internal.hash.Hash_hash.Hash));
            var _h = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L115"
            _h.write(_context);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L116"
            return { _0 : _c._expandLabel(_secret, ("exporter" : stdgo.GoString), _h.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _length), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function _finishedHash( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _baseKey:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _finishedKey = _c._expandLabel(_baseKey, ("finished" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size());
        var _verifyData = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_, _finishedKey) : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L104"
        _verifyData.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L105"
        return _verifyData.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _trafficKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _key = (null : stdgo.Slice<stdgo.GoUInt8>), _iv = (null : stdgo.Slice<stdgo.GoUInt8>);
        _key = _c._expandLabel(_trafficSecret, ("key" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyLen);
        _iv = _c._expandLabel(_trafficSecret, ("iv" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (12 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L95"
        return { _0 : _key, _1 : _iv };
    }
    @:keep
    @:tdfield
    static public function _nextTrafficSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _trafficSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L88"
        return _c._expandLabel(_trafficSecret, ("traffic upd" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size());
    }
    @:keep
    @:tdfield
    static public function _extract( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _newSecret:stdgo.Slice<stdgo.GoUInt8>, _currentSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L79"
        if (_newSecret == null) {
            _newSecret = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L82"
        return _internal.golangdotorg.x.crypto.hkdf.Hkdf_extract.extract((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_, _newSecret, _currentSecret);
    }
    @:keep
    @:tdfield
    static public function _deriveSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L71"
        if (_transcript == null) {
            _transcript = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L74"
        return _c._expandLabel(_secret, _label?.__copy__(), _transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size());
    }
    @:keep
    @:tdfield
    static public function _expandLabel( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13> = _c;
        var _hkdfLabel:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L37"
        _hkdfLabel.addUint16((_length : stdgo.GoUInt16));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L38"
        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L39"
            _b.addBytes(((("tls13 " : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L40"
            _b.addBytes((_label : stdgo.Slice<stdgo.GoUInt8>));
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L42"
        _hkdfLabel.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L43"
            _b.addBytes(_context);
        });
        var __tmp__ = _hkdfLabel.bytes(), _hkdfLabelBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L46"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L59"
            throw ({
                final __t__ = stdgo._internal.fmt.Fmt_errorf.errorf(("failed to construct HKDF label: %s" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _internal.golangdotorg.x.crypto.hkdf.Hkdf_expand.expand((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_, _secret, _hkdfLabelBytes).read(_out), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L63"
        if (((_err != null) || (_n != _length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L64"
            throw new stdgo.AnyInterface(("tls: HKDF-Expand-Label invocation failed unexpectedly" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/key_schedule.go#L66"
        return _out;
    }
}
