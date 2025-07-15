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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function _decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L365"
        if (((_encrypted.length) < (48 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L366"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L374"
        if (_ticketKeys != null) for (__3 => _key in _ticketKeys) {
            var _mac = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L376"
            _mac.write(_authenticated);
            var _expected = _mac.sum((null : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L379"
            if (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_macBytes, _expected) != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L380"
                continue;
            };
            var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L384"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L385"
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_ciphertext.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L388"
            stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv).xORKeyStream(_plaintext, _ciphertext);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L390"
            return _plaintext;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L393"
        return (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function decryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _ticketKeys = _c._ticketKeys(null);
        var _stateBytes = _c._decryptTicket(_identity, _ticketKeys);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L354"
        if (_stateBytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L355"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_stateBytes), _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L358"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L359"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L361"
        return { _0 : _s, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L320"
        if ((_ticketKeys.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L321"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: session ticket keys unavailable" : stdgo.GoString)) };
        };
        var _encrypted = (new stdgo.Slice<stdgo.GoUInt8>((((16 : stdgo.GoInt) + (_state.length) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _iv = (_encrypted.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _ciphertext = (_encrypted.__slice__((16 : stdgo.GoInt), ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _authenticated = (_encrypted.__slice__(0, ((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _macBytes = (_encrypted.__slice__(((_encrypted.length) - (32 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L330"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c._rand(), _iv), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L331"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _key = @:assignType (_ticketKeys[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey);
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher((_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _block:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L335"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L336"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("tls: failed to create cipher while encrypting ticket: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L338"
        stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv).xORKeyStream(_ciphertext, _state);
        var _mac = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_(stdgo._internal.crypto.sha256.Sha256_new_.new_, (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L341"
        _mac.write(_authenticated);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L342"
        _mac.sum((_macBytes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L344"
        return { _0 : _encrypted, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function encryptTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _ticketKeys = _c._ticketKeys(null);
        var __tmp__ = _ss.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L313"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L314"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L316"
        return _c._encryptTicket(_stateBytes, _ticketKeys);
    }
    @:keep
    @:tdfield
    static public function _writeKeyLog( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1384"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyLogWriter == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1385"
            return (null : stdgo.Error);
        };
        var _logLine = stdgo._internal.fmt.Fmt_appendf.appendf((null : stdgo.Slice<stdgo.GoUInt8>), ("%s %x %x\n" : stdgo.GoString), new stdgo.AnyInterface(_label, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_clientRandom, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_secret, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1390"
        stdgo._internal.crypto.tls.Tls__writermutex._writerMutex.lock();
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyLogWriter.write(_logLine), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1392"
        stdgo._internal.crypto.tls.Tls__writermutex._writerMutex.unlock();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1394"
        return _err;
    }
    @:keep
    @:tdfield
    static public function buildNameToCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1358"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates != null) for (_i => _ in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates) {
            var _cert = (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            var __tmp__ = _cert._leaf(), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1361"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1362"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1366"
            if ((((@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.commonName != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate[(@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).subject.commonName] = _cert;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1369"
            if ((@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames != null) for (__3 => _san in (@:checkr _x509Cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dNSNames) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate[_san] = _cert;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1114"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getCertificate != null) && ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates.length == (0 : stdgo.GoInt)) || (((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getCertificate(_clientHello), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1117"
            if ((({
                final value = _cert;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1118"
                return { _0 : _cert, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1122"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1123"
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__errnocertificates._errNoCertificates };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1126"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1128"
            return { _0 : (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1131"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate != null) {
            var _name = @:assignType (stdgo._internal.strings.Strings_tolower.toLower((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1133"
            {
                var __tmp__ = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate != null && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1134"
                    return { _0 : _cert, _1 : (null : stdgo.Error) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1136"
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                var _labels = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("." : stdgo.GoString));
                _labels[(0 : stdgo.GoInt)] = ("*" : stdgo.GoString);
                var _wildcardName = @:assignType (stdgo._internal.strings.Strings_join.join(_labels, ("." : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1140"
                {
                    var __tmp__ = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate != null && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate.__exists__(_wildcardName?.__copy__()) ? { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate[_wildcardName?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : false }), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1141"
                        return { _0 : _cert, _1 : (null : stdgo.Error) };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1146"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates != null) for (__3 => _cert in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1147"
            {
                var _err = @:assignType (_clientHello.supportsCertificate((stdgo.Go.setRef(_cert, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : stdgo.Error);
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1148"
                    return { _0 : (stdgo.Go.setRef(_cert, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1153"
        return { _0 : (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _mutualVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _supportedVersions = _c._supportedVersions(_isClient);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1099"
        if (_peerVersions != null) for (__3 => _peerVersion in _peerVersions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1100"
            if (_supportedVersions != null) for (__4 => _v in _supportedVersions) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1101"
                if (_v == (_peerVersion)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1102"
                    return { _0 : _v, _1 : true };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1106"
        return { _0 : (0 : stdgo.GoUInt16), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _supportsCurve( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1087"
        if (_c._curvePreferences() != null) for (__3 => _cc in _c._curvePreferences()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1088"
            if (_cc == (_curve)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1089"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1092"
        return false;
    }
    @:keep
    @:tdfield
    static public function _curvePreferences( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1077"
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1078"
            return stdgo._internal.crypto.tls.Tls__fipscurvepreferences._fipsCurvePreferences(_c);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1080"
        if ((({
            final value = _c;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).curvePreferences.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1081"
            return stdgo._internal.crypto.tls.Tls__defaultcurvepreferences._defaultCurvePreferences;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1083"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).curvePreferences;
    }
    @:keep
    @:tdfield
    static public function _maxSupportedVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool):stdgo.GoUInt16 {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _supportedVersions = _c._supportedVersions(_isClient);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1054"
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1055"
            return (0 : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1057"
        return _supportedVersions[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _supportedVersions( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _isClient:Bool):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _versions = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1033"
        if (stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions != null) for (__3 => _v in stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1034"
            if ((stdgo._internal.crypto.tls.Tls__needfips._needFIPS() && (((_v < stdgo._internal.crypto.tls.Tls__fipsminversion._fipsMinVersion(_c) : Bool) || (_v > stdgo._internal.crypto.tls.Tls__fipsmaxversion._fipsMaxVersion(_c) : Bool) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1035"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1037"
            if (((((({
                final value = _c;
                (value == null || (value : Dynamic).__nil__);
            }) || ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion == (0 : stdgo.GoUInt16)) : Bool)) && _isClient : Bool) && (_v < (771 : stdgo.GoUInt16) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1039"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1041"
            if (((({
                final value = _c;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1042"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1044"
            if (((({
                final value = _c;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxVersion != ((0 : stdgo.GoUInt16)) : Bool) && (_v > (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxVersion : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1045"
                continue;
            };
            _versions = (_versions.__append__(_v) : stdgo.Slice<stdgo.GoUInt16>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1049"
        return _versions;
    }
    @:keep
    @:tdfield
    static public function _cipherSuites( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo.GoUInt16> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1010"
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1011"
            return stdgo._internal.crypto.tls.Tls__fipsciphersuites._fipsCipherSuites(_c);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1013"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1014"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1016"
        return stdgo._internal.crypto.tls.Tls__defaultciphersuites._defaultCipherSuites;
    }
    @:keep
    @:tdfield
    static public function _time( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.time.Time_time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _t = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).time : () -> stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1003"
        if (_t == null) {
            _t = stdgo._internal.time.Time_now.now;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1006"
        return _t()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _rand( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _r = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rand : stdgo._internal.io.Io_reader.Reader);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L995"
        if (_r == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L996"
            return stdgo._internal.crypto.rand.Rand_reader.reader;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L998"
        return _r;
    }
    @:keep
    @:tdfield
    static public function setSessionTicketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L979"
        if ((_keys.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L980"
            throw new stdgo.AnyInterface(("tls: keys must have at least one key" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _newKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>((_keys.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_keys.length : stdgo.GoInt).toBasic() > 0 ? (_keys.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L984"
        if (_keys != null) for (_i => _bytes in _keys) {
            _newKeys[(_i : stdgo.GoInt)] = _c._ticketKeyFromBytes(_bytes?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L988"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys = _newKeys;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L990"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function _ticketKeys( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L913"
            if (({
                final value = _configForClient;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L914"
                (@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rLock();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L915"
                if ((@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L916"
                    return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L918"
                _configForClient._initLegacySessionTicketKeyRLocked();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L919"
                if (((@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                    var _ret = (@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys;
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L921"
                    (@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L922"
                    return _ret;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L924"
                (@:checkr _configForClient ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L927"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rLock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L929"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L930"
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L932"
            _c._initLegacySessionTicketKeyRLocked();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L933"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L934"
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L937"
            if (((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) && (_c._time().sub((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) < (86400000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L938"
                {
                    final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L942"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rLock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L944"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L947"
            if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys.length == (0 : stdgo.GoInt)) || (_c._time().sub((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys[(0 : stdgo.GoInt)]._created?.__copy__()) >= (86400000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                var _newKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L949"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c._rand(), (_newKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L950"
                        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unable to generate random session ticket key: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
                var _valid = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>((0 : stdgo.GoInt).toBasic(), (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                _valid = (_valid.__append__(_c._ticketKeyFromBytes(_newKey?.__copy__())?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L954"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys != null) for (__4 => _k in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L956"
                    if ((_c._time().sub(_k._created?.__copy__()) < (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        _valid = (_valid.__append__(_k?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
                    };
                };
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys = _valid;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L962"
            {
                final __ret__:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _initLegacySessionTicketKeyRLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L876"
            if (((new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32))) != new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32)))) && ((stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey) || (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L878"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L882"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rLock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L884"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L886"
            if (new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32))) == new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32)))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L887"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_c._rand(), ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L888"
                        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("tls: unable to generate random session ticket key: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L894"
                ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey);
            } else if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.crypto.tls.Tls__deprecatedsessionticketkey._deprecatedSessionTicketKey) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>(1, 1, ...[_c._ticketKeyFromBytes((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey?.__copy__())?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function clone( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L828"
            if (({
                final value = _c;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L829"
                return null;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L831"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rLock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L833"
            {
                final __ret__:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (stdgo.Go.setRef(({ rand : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rand, time : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).time, certificates : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates, nameToCertificate : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nameToCertificate, getCertificate : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getCertificate, getClientCertificate : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getClientCertificate, getConfigForClient : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getConfigForClient, verifyPeerCertificate : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyPeerCertificate, verifyConnection : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection, rootCAs : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rootCAs, nextProtos : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, serverName : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__(), clientAuth : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth, clientCAs : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs, insecureSkipVerify : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).insecureSkipVerify, cipherSuites : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites, preferServerCipherSuites : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).preferServerCipherSuites, sessionTicketsDisabled : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled, sessionTicketKey : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketKey?.__copy__(), clientSessionCache : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache, unwrapSession : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unwrapSession, wrapSession : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wrapSession, minVersion : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion, maxVersion : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxVersion, curvePreferences : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).curvePreferences, dynamicRecordSizingDisabled : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dynamicRecordSizingDisabled, renegotiation : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).renegotiation, keyLogWriter : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).keyLogWriter, _sessionTicketKeys : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketKeys, _autoSessionTicketKeys : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autoSessionTicketKeys } : stdgo._internal.crypto.tls.Tls_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _ticketKeyFromBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = _c;
        var _key = ({} : stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey);
        var _hashed = stdgo._internal.crypto.sha512.Sha512_sum512.sum512((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
        {};
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L815"
        (_key._aesKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_hashed.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L816"
        (_key._hmacKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_hashed.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _key._created = _c._time()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L818"
        return _key = _key?.__copy__();
    }
}
