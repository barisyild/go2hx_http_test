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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeStateTLS13_asInterface) class T_serverHandshakeStateTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _readClientFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L973"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L974"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _finished = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L978"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L979"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L980"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_finished, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L983"
        if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished, (@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L984"
            _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L985"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid client finished hash" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L988"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L990"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readClientCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L882"
        if (!_hs._requestClientCert()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L885"
            if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L886"
                {
                    var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L887"
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L888"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L891"
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._readHandshake((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L898"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L899"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L903"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L904"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L905"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certMsg, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L908"
        {
            var _err = @:assignType (_c._processCertsFromClient((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L909"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L912"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L913"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L914"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L915"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L919"
        if (((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate.certificate.length) != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L924"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L925"
                return _err;
            };
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : false };
            }, _certVerify = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L929"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L930"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L931"
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certVerify, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg }))), _msg);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L935"
            if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm, stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms())) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L936"
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L937"
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L940"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L941"
                return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L943"
            if (((_sigType == (225 : stdgo.GoUInt8)) || (_sigHash == (3u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L944"
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L945"
                return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
            };
            var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, client CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L948"
            {
                var _err = @:assignType (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, ({
                    final __t__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _sigHash, _signed, (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L950"
                    _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L951"
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L954"
            {
                var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_certVerify, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L955"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L961"
        {
            var _err = @:assignType (_hs._sendSessionTickets() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L962"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L965"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._trafficSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        var _finishedMsg = (stdgo.Go.setRef(({ _verifyData : (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L808"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_finishedMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L809"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resumptionSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("res master" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L815"
        if (!_hs._shouldSendSessionTickets()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L816"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L818"
        return _c._sendSessionTicket(false);
    }
    @:keep
    @:tdfield
    static public function _shouldSendSessionTickets( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L783"
        if ((@:checkr (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L784"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L788"
        if (({
            final value = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L789"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L793"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes != null) for (__3 => _pskMode in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L794"
            if (_pskMode == ((1 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L795"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L798"
        return false;
    }
    @:keep
    @:tdfield
    static public function _sendServerFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _finished = (stdgo.Go.setRef(({ _verifyData : (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._trafficSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) } : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L734"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L735"
                return _err;
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeSecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("c ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        var _serverSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, ("s ap traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L747"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L749"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L750"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L752"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L754"
            _c._quicSetWriteSecret((3 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _serverSecret);
        };
        var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trafficSecret) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L758"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L759"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L760"
            return _err;
        };
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("SERVER_TRAFFIC_SECRET_0" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L763"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L764"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L765"
            return _err;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ekm = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._exportKeyingMaterial((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L773"
        if (!_hs._requestClientCert()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L774"
            {
                var _err = @:assignType (_hs._sendSessionTickets() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L775"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L779"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendServerCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L664"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L665"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L668"
        if (_hs._requestClientCert()) {
            var _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgtls13dott_certificaterequestmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgtls13dotT_certificateRequestMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>);
            (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = true;
            (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = true;
            (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L674"
            if (({
                final value = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs.subjects();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L678"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgtls13dott_certificaterequestmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgtls13dotT_certificateRequestMsgTLS13 })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L679"
                    return _err;
                };
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>);
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificate = ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert : stdgo._internal.crypto.tls.Tls_certificate.Certificate)?.__copy__();
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts && (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signedCertificateTimestamps.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling && (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L689"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L690"
                return _err;
            };
        };
        var _certVerifyMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
        (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm = true;
        (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sigAlg;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sigAlg), _sigType:stdgo.GoUInt8 = __tmp__._0, _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L698"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L699"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _signed = stdgo._internal.crypto.tls.Tls__signedmessage._signedMessage(_sigHash, (stdgo.Go.str("TLS 1.3, server CertificateVerify", 0) : stdgo.GoString)?.__copy__(), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        var _signOpts = @:assignType (stdgo.Go.asInterface(_sigHash, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L704"
        if (_sigType == ((226 : stdgo.GoUInt8))) {
            _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
        };
        var __tmp__ = (stdgo.Go.typeAssert((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer).sign((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand(), _signed, _signOpts), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L708"
        if (_err != null) {
            var _public = @:assignType ((stdgo.Go.typeAssert((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer).public_() : stdgo._internal.crypto.Crypto_publickey.PublicKey);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L710"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_public, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
                }, _rsaKey = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && _sigType == ((226 : stdgo.GoUInt8)) : Bool) && (((@:checkr _rsaKey ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt) < ((_sigHash.size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L712"
                    _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L714"
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L716"
            return stdgo._internal.errors.Errors_new_.new_((("tls: failed to sign handshake: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
        };
        (@:checkr _certVerifyMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature = _sig;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L720"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerifyMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L721"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L724"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _requestClientCert( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L657"
        return (((@:checkr (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) && !(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK : Bool);
    }
    @:keep
    @:tdfield
    static public function _sendServerParameters( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L593"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L594"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L596"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L597"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L600"
        {
            var _err = @:assignType (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L601"
                return _err;
            };
        };
        var _earlySecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlySecret;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L605"
        if (_earlySecret == null) {
            _earlySecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sharedKey, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret(_earlySecret, ("derived" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash)));
        var _clientSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeSecret, ("c hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L613"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _clientSecret);
        var _serverSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeSecret, ("s hs traffic" : stdgo.GoString), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L616"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setTrafficSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L618"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L619"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L620"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L622"
            _c._quicSetWriteSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _serverSecret);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L623"
            _c._quicSetReadSecret((2 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _clientSecret);
        };
        var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _clientSecret) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L627"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L628"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L629"
            return _err;
        };
        _err = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("SERVER_HANDSHAKE_TRAFFIC_SECRET" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, _serverSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L632"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L633"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L634"
            return _err;
        };
        var _encryptedExtensions = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>);
        (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L640"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var __tmp__ = _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L642"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L643"
                return _err;
            };
            (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters = _p;
            (@:checkr _encryptedExtensions ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L649"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_encryptedExtensions, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L650"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L653"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doHelloRetryRequest( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>, _selectedGroup:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L475"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L476"
                return _err;
            };
        };
        var _chHash = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L479"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.reset();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L480"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.write((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(254 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_chHash.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L481"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript.write(_chHash);
        var _helloRetryRequest = (stdgo.Go.setRef(({ _vers : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _random : stdgo._internal.crypto.tls.Tls__helloretryrequestrandom._helloRetryRequestRandom, _sessionId : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, _cipherSuite : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite, _compressionMethod : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod, _supportedVersion : (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion, _selectedGroup : _selectedGroup } : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L493"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloRetryRequest, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L494"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L497"
        {
            var _err = @:assignType (_hs._sendDummyChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L498"
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L503"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L504"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L508"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L509"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L510"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_clientHello, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L513"
        if ((((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares.length != (1 : stdgo.GoInt)) || ((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares[(0 : stdgo.GoInt)]._group != _selectedGroup) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L514"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L515"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client sent invalid key share in second ClientHello" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L518"
        if ((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L519"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L520"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client indicated early data in second ClientHello" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L523"
        if (stdgo._internal.crypto.tls.Tls__illegalclienthellochange._illegalClientHelloChange(_clientHello, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L524"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L525"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client illegally modified second ClientHello" : stdgo.GoString));
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello = _clientHello;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L529"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendDummyChangeCipherSpec( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L459"
        if (({
            final value = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L460"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L462"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentDummyCCS) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L463"
            return (null : stdgo.Error);
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentDummyCCS = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L467"
        return (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeChangeCipherRecord();
    }
    @:keep
    @:tdfield
    static public function _pickCertificate( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L426"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L427"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L431"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L432"
            return _c._sendAlert((109 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._getCertificate(stdgo._internal.crypto.tls.Tls__clienthelloinfo._clientHelloInfo((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx, _c, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello)), _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L436"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L437"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.crypto.tls.Tls__errnocertificates._errNoCertificates;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L438"
                _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L440"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L442"
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _certificate, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms);
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sigAlg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L445"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L448"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L449"
            return _err;
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert = _certificate;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L453"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L263"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L264"
            return (null : stdgo.Error);
        };
        var _modeOK = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L268"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes != null) for (__3 => _mode in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L269"
            if (_mode == ((1 : stdgo.GoUInt8))) {
                _modeOK = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L271"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L274"
        if (!_modeOK) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L275"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L278"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length) != (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L279"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L280"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid or missing PSK binders" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L282"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L283"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L286"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities != null) for (_i => _identity in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L287"
            if ((_i >= (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L288"
                break;
            };
            var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L292"
            if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unwrapSession != null) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unwrapSession(_identity._label, _c._connectionStateLocked()?.__copy__());
                    _sessionState = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L295"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L296"
                    return _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L298"
                if (({
                    final value = _sessionState;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L299"
                    continue;
                };
            } else {
                var _plaintext = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._decryptTicket(_identity._label, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketKeys);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L303"
                if (_plaintext == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L304"
                    continue;
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_plaintext);
                    _sessionState = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L308"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L309"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L313"
            if ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version != ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L314"
                continue;
            };
            var _createdAt = @:assignType (stdgo._internal.time.Time_unix.unix(((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L318"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L319"
                continue;
            };
            var _pskSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L323"
            if ((({
                final value = _pskSuite;
                (value == null || (value : Dynamic).__nil__);
            }) || ((@:checkr _pskSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash != (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L324"
                continue;
            };
            var _sessionHasClientCerts = @:assignType (((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
            var _needClientCerts = @:assignType (stdgo._internal.crypto.tls.Tls__requiresclientcert._requiresClientCert((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L332"
            if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L333"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L335"
            if ((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth == (0 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L336"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L338"
            if ((_sessionHasClientCerts && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().after((@:checkr (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L339"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L341"
            if (((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) : Bool) && ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L343"
                continue;
            };
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlySecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._extract((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
            var _binderKey = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash));
            var _transcript = @:assignType (stdgo._internal.crypto.tls.Tls__clonehash._cloneHash((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transcript, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash) : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L350"
            if (_transcript == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L351"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L352"
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: failed to clone hash" : stdgo.GoString));
            };
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello._marshalWithoutBinders(), _clientHelloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L355"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L356"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L357"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L359"
            _transcript.write(_clientHelloBytes);
            var _pskBinder = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._finishedHash(_binderKey, _transcript);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L361"
            if (!stdgo._internal.crypto.hmac.Hmac_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders[(_i : stdgo.GoInt)], _pskBinder)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L362"
                _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L363"
                return stdgo._internal.errors.Errors_new_.new_(("tls: invalid PSK binder" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L366"
            if ((((((({
                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData : Bool) && _i == ((0 : stdgo.GoInt)) : Bool) && (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData : Bool) && (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite == ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id) : Bool) && ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol == (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol) : Bool)) {
                (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = true;
                var _transcript = @:assignType ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L372"
                {
                    var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), _transcript) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L373"
                        return _err;
                    };
                };
                var _earlyTrafficSecret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite._deriveSecret((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L376"
                _c._quicSetReadSecret((1 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _earlyTrafficSecret);
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume = true;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains;
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentityPresent = true;
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._selectedIdentity = (_i : stdgo.GoUInt16);
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._usingPSK = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L388"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L391"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error return null;
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L48"
        if (stdgo._internal.crypto.tls.Tls__needfips._needFIPS()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L49"
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: TLS 1.3 reached in FIPS mode" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L53"
        {
            var _err = @:assignType (_hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L54"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L56"
        {
            var _err = @:assignType (_hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L57"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L59"
        {
            var _err = @:assignType (_hs._pickCertificate() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L60"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L63"
        {
            var _err = @:assignType (_hs._sendServerParameters() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L64"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L66"
        {
            var _err = @:assignType (_hs._sendServerCertificate() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L67"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L69"
        {
            var _err = @:assignType (_hs._sendServerFinished() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L70"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L75"
        {
            var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L76"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L78"
        {
            var _err = @:assignType (_hs._readClientCertificate() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L79"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L81"
        {
            var _err = @:assignType (_hs._readClientFinished() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L82"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L85"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.store(true);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L87"
        return (null : stdgo.Error);
    }
}
