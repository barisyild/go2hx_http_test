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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_halfConn_asInterface) class T_halfConn_static_extension {
    @:keep
    @:tdfield
    static public function _encrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>, _payload:stdgo.Slice<stdgo.GoUInt8>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L479"
        if (({
            final value = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L480"
            return { _0 : (_record.__append__(...(_payload : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _explicitNonce:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L484"
        {
            var _explicitNonceLen = @:assignType (_hc._explicitNonceLen() : stdgo.GoInt);
            if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, _explicitNonceLen);
                    _record = @:tmpset0 __tmp__._0;
                    _explicitNonce = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L486"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cbcmodedott_cbcmode.__type__stdgodot_internaldotcryptodottlsdotTls_t_cbcmodedotT_cbcMode) : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode), _1 : false };
                    }, __3 = __tmp__._0, _isCBC = __tmp__._1;
                    if ((!_isCBC && (_explicitNonceLen < (16 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L496"
                        _explicitNonce.__copyTo__(((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L498"
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _explicitNonce), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L499"
                                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                            };
                        };
                    };
                };
            };
        };
        var _dst:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L505"
        {
            final __type__ = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream)) {
                var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac, ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, ((_payload.length) + (_mac.length) : stdgo.GoInt));
                    _record = @:tmpset0 __tmp__._0;
                    _dst = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L509"
                _c.xORKeyStream((_dst.__slice__(0, (_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _payload);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L510"
                _c.xORKeyStream((_dst.__slice__((_payload.length)) : stdgo.Slice<stdgo.GoUInt8>), _mac);
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)) {
                var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                var _nonce = _explicitNonce;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L513"
                if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                    _nonce = ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L517"
                if ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version == ((772 : stdgo.GoUInt16))) {
                    _record = (_record.__append__(...(_payload : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _record = (_record.__append__(_record[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _record[(0 : stdgo.GoInt)] = ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType) : stdgo.GoUInt8);
                    var _n = @:assignType (((_payload.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + _c.overhead() : stdgo.GoInt);
                    _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                    _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
                    _record = _c.seal((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    var _additionalData = (((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _record = _c.seal(_record, _nonce, _payload, _additionalData);
                };
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cbcmodedott_cbcmode.__type__stdgodot_internaldotcryptodottlsdotTls_t_cbcmodedotT_cbcMode)) {
                var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                var _mac = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac, ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _payload, (null : stdgo.Slice<stdgo.GoUInt8>));
                var _blockSize = @:assignType (_c.blockSize() : stdgo.GoInt);
                var _plaintextLen = @:assignType ((_payload.length) + (_mac.length) : stdgo.GoInt);
                var _paddingLen = @:assignType (_blockSize - (_plaintextLen % _blockSize : stdgo.GoInt) : stdgo.GoInt);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend(_record, (_plaintextLen + _paddingLen : stdgo.GoInt));
                    _record = @:tmpset0 __tmp__._0;
                    _dst = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L541"
                _dst.__copyTo__(_payload);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L542"
                (_dst.__slice__((_payload.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_mac);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L543"
                {
                    var _i = @:assignType (_plaintextLen : stdgo.GoInt);
                    while ((_i < (_dst.length) : Bool)) {
                        _dst[(_i : stdgo.GoInt)] = ((_paddingLen - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _i++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L546"
                if (((_explicitNonce.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L547"
                    _c.setIV(_explicitNonce);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L549"
                _c.cryptBlocks(_dst, _dst);
            } else {
                var _c:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L551"
                throw new stdgo.AnyInterface(("unknown cipher type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        var _n = @:assignType ((_record.length) - (5 : stdgo.GoInt) : stdgo.GoInt);
        _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L558"
        _hc._incSeq();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L560"
        return { _0 : _record, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _decrypt( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _record:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType; var _2 : stdgo.Error; } {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        var _plaintext:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = @:assignType (_record[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
        var _payload = (_record.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L345"
        if ((((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version == (772 : stdgo.GoUInt16)) && (_typ == (20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L346"
            return { _0 : _payload, _1 : _typ, _2 : (null : stdgo.Error) };
        };
        var _paddingGood = @:assignType ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _paddingLen = @:assignType (0 : stdgo.GoInt);
        var _explicitNonceLen = @:assignType (_hc._explicitNonceLen() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L354"
        if (({
            final value = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L355"
            {
                final __type__ = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
                if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream)) {
                    var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L357"
                    _c.xORKeyStream(_payload, _payload);
                } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)) {
                    var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L359"
                    if (((_payload.length) < _explicitNonceLen : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L360"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                    };
                    var _nonce = (_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L363"
                    if ((_nonce.length) == ((0 : stdgo.GoInt))) {
                        _nonce = ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    var _additionalData:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L369"
                    if ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version == ((772 : stdgo.GoUInt16))) {
                        _additionalData = (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        _additionalData = (((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...(((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        _additionalData = (_additionalData.__append__(...((_record.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _n = @:assignType ((_payload.length) - _c.overhead() : stdgo.GoInt);
                        _additionalData = (_additionalData.__append__(((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_n : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _c.open((_payload.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce, _payload, _additionalData);
                        _plaintext = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L380"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L381"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                    };
                } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cbcmodedott_cbcmode.__type__stdgodot_internaldotcryptodottlsdotTls_t_cbcmodedotT_cbcMode)) {
                    var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = @:assignType (_c.blockSize() : stdgo.GoInt);
                    var _minPayload = @:assignType (_explicitNonceLen + stdgo._internal.crypto.tls.Tls__roundup._roundUp(((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac.size() + (1 : stdgo.GoInt) : stdgo.GoInt), _blockSize) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L386"
                    if (((((_payload.length) % _blockSize : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_payload.length) < _minPayload : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L387"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L390"
                    if ((_explicitNonceLen > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L391"
                        _c.setIV((_payload.__slice__(0, _explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>));
                        _payload = (_payload.__slice__(_explicitNonceLen) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L394"
                    _c.cryptBlocks(_payload, _payload);
                    {
                        var __tmp__ = stdgo._internal.crypto.tls.Tls__extractpadding._extractPadding(_payload);
                        _paddingLen = @:tmpset0 __tmp__._0;
                        _paddingGood = @:tmpset0 __tmp__._1;
                    };
                } else {
                    var _c:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L404"
                    throw new stdgo.AnyInterface(("unknown cipher type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L407"
            if ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version == ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L408"
                if (_typ != ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L409"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L411"
                if (((_plaintext.length) > (16385 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L412"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L415"
                {
                    var _i = @:assignType ((_plaintext.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L416"
                        if (_plaintext[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                            _typ = (_plaintext[(_i : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
                            _plaintext = (_plaintext.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L419"
                            break;
                        };
//"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L421"
                        if (_i == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L422"
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                        };
                        _i--;
                    };
                };
            };
        } else {
            _plaintext = _payload;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L430"
        if ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac != null) {
            var _macSize = @:assignType ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac.size() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L432"
            if (((_payload.length) < _macSize : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L433"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
            };
            var _n = @:assignType (((_payload.length) - _macSize : stdgo.GoInt) - _paddingLen : stdgo.GoInt);
            _n = stdgo._internal.crypto.subtle.Subtle_constanttimeselect.constantTimeSelect((((_n : stdgo.GoUInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), (0 : stdgo.GoInt), _n);
            _record[(3 : stdgo.GoInt)] = ((_n >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
            _record[(4 : stdgo.GoInt)] = (_n : stdgo.GoUInt8);
            var _remoteMAC = (_payload.__slice__(_n, (_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _localMAC = stdgo._internal.crypto.tls.Tls__tls10mac._tls10MAC((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac, ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scratchBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_record.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_payload.__slice__((_n + _macSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            var _macAndPaddingGood = @:assignType (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_localMAC, _remoteMAC) & (_paddingGood : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L451"
            if (_macAndPaddingGood != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L452"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (0 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _2 : stdgo.Go.asInterface((20 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
            };
            _plaintext = (_payload.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L458"
        _hc._incSeq();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L459"
        return { _0 : _plaintext, _1 : _typ, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _explicitNonceLen( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):stdgo.GoInt {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L256"
        if (({
            final value = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L257"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L260"
        {
            final __type__ = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher;
            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream)) {
                var _c:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L262"
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)) {
                var _c:stdgo._internal.crypto.tls.Tls_t_aead.T_aead = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_aead.T_aead) : __type__.__underlying__().value;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L264"
                return _c._explicitNonceLen();
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cbcmodedott_cbcmode.__type__stdgodot_internaldotcryptodottlsdotTls_t_cbcmodedotT_cbcMode)) {
                var _c:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L267"
                if (((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version >= (770 : stdgo.GoUInt16) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L268"
                    return _c.blockSize();
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L270"
                return (0 : stdgo.GoInt);
            } else {
                var _c:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L272"
                throw new stdgo.AnyInterface(("unknown cipher type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _incSeq( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L239"
        {
            var _i = @:assignType (7 : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L240"
                (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq[(_i : stdgo.GoInt)]++;
//"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L241"
                if ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L242"
                    return;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L249"
        throw new stdgo.AnyInterface(("TLS: sequence number wraparound" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function _setTrafficSecret( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13.T_cipherSuiteTLS13>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret = _secret;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level = _level;
        var __tmp__ = _suite._trafficKey(_secret), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _iv:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher = ({
            final __t__ = (@:checkr _suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aead(_key, _iv);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L232"
        for (_i => _ in (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__copy__()) {
            (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _changeCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L214"
        if ((({
            final value = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCipher;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version == (772 : stdgo.GoUInt16)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L215"
            return stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert);
        };
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCipher;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac = (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextMac;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCipher = (null : stdgo.AnyInterface);
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextMac = (null : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L221"
        for (_i => _ in (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq.__copy__()) {
            (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seq[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L224"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _prepareCipherSpec( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _version:stdgo.GoUInt16, _cipher:stdgo.AnyInterface, _mac:stdgo._internal.hash.Hash_hash.Hash):Void {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version = _version;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCipher = _cipher;
        (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextMac = _mac;
    }
    @:keep
    @:tdfield
    static public function _setErrorLocked( _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn>, _err:stdgo.Error):stdgo.Error {
        @:recv var _hc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn> = _hc;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L195"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_errordoterror.__type__stdgodot_internaldotnetdotNet_errordotError) : stdgo._internal.net.Net_error.Error), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _e } : stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_permanenterrordott_permanenterror.__type__stdgodot_internaldotcryptodottlsdotTls_t_permanenterrordotT_permanentError })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_permanenterror.T_permanentError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_permanenterrordott_permanenterror.__type__stdgodot_internaldotcryptodottlsdotTls_t_permanenterrordotT_permanentError }));
            } else {
                (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L200"
        return (@:checkr _hc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn):Void return @:_5 __self__.lock();
}
