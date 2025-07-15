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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_serverHandshakeState_asInterface) class T_serverHandshakeState_static_extension {
    @:keep
    @:tdfield
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L841"
        {
            var _err = @:assignType (_c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L842"
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        (@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._serverSum((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L847"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L848"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L851"
        _out.__copyTo__((@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L853"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L798"
        if (!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L799"
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>);
        var __tmp__ = _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L806"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L807"
            return _err;
        };
        (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L810"
        if (({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionState;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L815"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wrapSession != null) {
            {
                var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wrapSession(_c._connectionStateLocked()?.__copy__(), _state);
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L817"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L818"
                return _err;
            };
        } else {
            var __tmp__ = _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L822"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L823"
                return _err;
            };
            {
                var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._encryptTicket(_stateBytes, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketKeys);
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L826"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L827"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L831"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_m, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L832"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L835"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L765"
        {
            var _err = @:assignType (_c._readChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L766"
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L773"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L774"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _clientFinished = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L777"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L778"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L779"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_clientFinished, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg }))), _msg);
        };
        var _verify = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._clientSum((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L783"
        if (((_verify.length != ((@:checkr _clientFinished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_verify, (@:checkr _clientFinished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L785"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L786"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client\'s Finished message is incorrect" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L789"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_clientFinished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L790"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L793"
        _out.__copyTo__(_verify);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L794"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysfrommastersecret._keysFromMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._macLen, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyLen, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var _clientCipher:stdgo.AnyInterface = (null : stdgo.AnyInterface), _serverCipher:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _clientHash:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash), _serverHash:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L746"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aead == null) {
            _clientCipher = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher(_clientKey, _clientIV, true);
            _clientHash = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac(_clientMAC);
            _serverCipher = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher(_serverKey, _serverIV, false);
            _serverHash = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac(_serverMAC);
        } else {
            _clientCipher = ({
                final __t__ = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aead(_clientKey, _clientIV);
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
            _serverCipher = ({
                final __t__ = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aead(_serverKey, _serverIV);
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L756"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._prepareCipherSpec((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _clientCipher, _clientHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L757"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._prepareCipherSpec((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _serverCipher, _serverHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L759"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L539"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling && (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling = true;
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported = ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported && !(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled : Bool);
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash = stdgo._internal.crypto.tls.Tls__newfinishedhash._newFinishedHash((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L547"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth == ((0 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L550"
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._discardHandshakeBuffer();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L552"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L553"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L555"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L556"
                return _err;
            };
        };
        var _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>);
        (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L561"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L562"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L565"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) {
            var _certStatus = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatestatusmsgdott_certificatestatusmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatestatusmsgdotT_certificateStatusMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>);
            (@:checkr _certStatus ?? throw stdgo.Error._nullPointerDereference.__underlying__())._response = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).oCSPStaple;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L568"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certStatus, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatestatusmsgdott_certificatestatusmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatestatusmsgdotT_certificateStatusMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L569"
                    return _err;
                };
            };
        };
        var _keyAgreement = @:assignType ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ka((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers) : stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement);
        var __tmp__ = _keyAgreement._generateServerKeyExchange((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello), _skx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L575"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L576"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L577"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L579"
        if (({
            final value = _skx;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L580"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_skx, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverkeyexchangemsgdott_serverkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverkeyexchangemsgdotT_serverKeyExchangeMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L581"
                    return _err;
                };
            };
        };
        var _certReq:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L586"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool)) {
            _certReq = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgdott_certificaterequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgdotT_certificateRequestMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>);
            (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateTypes = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L593"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm = true;
                (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L603"
            if (({
                final value = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificateAuthorities = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs.subjects();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L606"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certReq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgdott_certificaterequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgdotT_certificateRequestMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L607"
                    return _err;
                };
            };
        };
        var _helloDone = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L612"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_helloDone, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L613"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L616"
        {
            var __tmp__ = _c._flush(), __6:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L617"
                return _err;
            };
        };
        var _pub:stdgo._internal.crypto.Crypto_publickey.PublicKey = (null : stdgo._internal.crypto.Crypto_publickey.PublicKey);
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L623"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L624"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L629"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (1 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool)) {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : false };
            }, _certMsg = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L631"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L632"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L633"
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certMsg, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg }))), _msg);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L636"
            {
                var _err = @:assignType (_c._processCertsFromClient(({ certificate : (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates } : stdgo._internal.crypto.tls.Tls_certificate.Certificate)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L639"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L641"
            if (((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates.length) != ((0 : stdgo.GoInt))) {
                _pub = ({
                    final __t__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L646"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L647"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L650"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L651"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L652"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L653"
                    return _err;
                };
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>), _1 : false };
        }, _ckx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L659"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L660"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L661"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_ckx, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg }))), _msg);
        };
        var __tmp__ = _keyAgreement._processClientKeyExchange((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert, _ckx, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L665"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L666"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L667"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L669"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = true;
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = stdgo._internal.crypto.tls.Tls__extmasterfrompremastersecret._extMasterFromPreMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, _preMasterSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash.sum());
        } else {
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = stdgo._internal.crypto.tls.Tls__masterfrompremastersecret._masterFromPreMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, _preMasterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L677"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L678"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L679"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L688"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L693"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L694"
                return _err;
            };
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), _1 : false };
            }, _certVerify = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L697"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L698"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L699"
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certVerify, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg }))), _msg);
            };
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L704"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L705"
                if (!stdgo._internal.crypto.tls.Tls__issupportedsignaturealgorithm._isSupportedSignatureAlgorithm((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm, (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L706"
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L707"
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client certificate used with invalid signature algorithm" : stdgo.GoString));
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme((@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L710"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L711"
                    return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(_pub);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L715"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L716"
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L717"
                    return _err;
                };
            };
            var _signed = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._hashForClientCertificate(_sigType, _sigHash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L722"
            {
                var _err = @:assignType (stdgo._internal.crypto.tls.Tls__verifyhandshakesignature._verifyHandshakeSignature(_sigType, _pub, _sigHash, _signed, (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L723"
                    _c._sendAlert((51 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L724"
                    return stdgo._internal.errors.Errors_new_.new_((("tls: invalid signature by the client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L727"
            {
                var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_certVerify, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L728"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L732"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._discardHandshakeBuffer();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L734"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doResumeHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId;
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported = true;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash = stdgo._internal.crypto.tls.Tls__newfinishedhash._newFinishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L516"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._discardHandshakeBuffer();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L517"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L518"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L520"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L521"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L524"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L525"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L526"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L527"
                    return _err;
                };
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L533"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkForResumption( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L408"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L409"
            return (null : stdgo.Error);
        };
        var _sessionState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L413"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unwrapSession != null) {
            var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unwrapSession((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket, _c._connectionStateLocked()?.__copy__()), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L415"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L416"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L418"
            if (({
                final value = _ss;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L419"
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        } else {
            var _plaintext = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._decryptTicket((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketKeys);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L424"
            if (_plaintext == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L425"
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.crypto.tls.Tls_parsesessionstate.parseSessionState(_plaintext), _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L428"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L429"
                return (null : stdgo.Error);
            };
            _sessionState = _ss;
        };
        var _createdAt = @:assignType (stdgo._internal.time.Time_unix.unix(((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L438"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().sub(_createdAt?.__copy__()) > (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L439"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L443"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L444"
            return (null : stdgo.Error);
        };
        var _cipherSuiteOk = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L449"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites != null) for (__3 => _id in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L450"
            if (_id == ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite)) {
                _cipherSuiteOk = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L452"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L455"
        if (!_cipherSuiteOk) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L456"
            return (null : stdgo.Error);
        };
        var _suite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite((new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[(@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._cipherSuites(), _hs._cipherSuiteOk);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L462"
        if (({
            final value = _suite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L463"
            return (null : stdgo.Error);
        };
        var _sessionHasClientCerts = @:assignType (((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates.length) != ((0 : stdgo.GoInt)) : Bool);
        var _needClientCerts = @:assignType (stdgo._internal.crypto.tls.Tls__requiresclientcert._requiresClientCert((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L468"
        if ((_needClientCerts && !_sessionHasClientCerts : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L469"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L471"
        if ((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth == (0 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L472"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L474"
        if ((_sessionHasClientCerts && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().after((@:checkr (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L475"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L477"
        if (((_sessionHasClientCerts && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) : Bool) && ((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L479"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L483"
        if ((!(@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret && (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L484"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L486"
        if (((@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret && !(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L489"
            return stdgo._internal.errors.Errors_new_.new_(("tls: session supported extended_master_secret but client does not" : stdgo.GoString));
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = (@:checkr _sessionState ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionState = _sessionState;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite = _suite;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L500"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _cipherSuiteOk( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ciphersuite.T_cipherSuite>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L384"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L385"
            if (!(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheOk) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L386"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L388"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L389"
                if (!(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecSignOk) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L390"
                    return false;
                };
            } else if (!(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rsaSignOk) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L393"
                return false;
            };
        } else if (!(@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rsaDecryptOk) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L396"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L398"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L399"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L401"
        return true;
    }
    @:keep
    @:tdfield
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceorder._cipherSuitesPreferenceOrder;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L347"
        if ((!stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport || !stdgo._internal.crypto.tls.Tls__aesgcmpreferred._aesgcmPreferred((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) : Bool)) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceordernoaes._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._cipherSuites();
        var _preferenceList = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L353"
        if (_preferenceOrder != null) for (__3 => _suiteID in _preferenceOrder) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L354"
            if (_configCipherSuites != null) for (__4 => _id in _configCipherSuites) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L355"
                if (_id == (_suiteID)) {
                    _preferenceList = (_preferenceList.__append__(_id) : stdgo.Slice<stdgo.GoUInt16>);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L357"
                    break;
                };
            };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite = stdgo._internal.crypto.tls.Tls__selectciphersuite._selectCipherSuite(_preferenceList, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites, _hs._cipherSuiteOk);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L363"
        if (({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L364"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L365"
            return stdgo._internal.errors.Errors_new_.new_(("tls: no cipher suite supported by both client and server" : stdgo.GoString));
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L369"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites != null) for (__4 => _id in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L370"
            if (_id == ((22016 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L372"
                if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._maxSupportedVersion(false) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L373"
                    _c._sendAlert((86 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L374"
                    return stdgo._internal.errors.Errors_new_.new_(("tls: client using inappropriate protocol fallback" : stdgo.GoString));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L376"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L380"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processClientHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>);
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers;
        var _foundCompression = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L182"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods != null) for (__3 => _compression in (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethods) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L183"
            if (_compression == ((0 : stdgo.GoUInt8))) {
                _foundCompression = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L185"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L189"
        if (!_foundCompression) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L190"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L191"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client does not support uncompressed connections" : stdgo.GoString));
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _serverRandom = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random;
        var _maxVers = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._maxSupportedVersion(false) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L198"
        if ((((_maxVers >= (771 : stdgo.GoUInt16) : Bool) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers < _maxVers : Bool) : Bool) || stdgo._internal.crypto.tls.Tls__testingonlyforcedowngradecanary._testingOnlyForceDowngradeCanary : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L199"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((771 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L200"
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((stdgo.Go.str("DOWNGRD", 1) : stdgo.GoString));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L202"
                (_serverRandom.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((stdgo.Go.str("DOWNGRD", 0) : stdgo.GoString));
            };
            _serverRandom = (_serverRandom.__slice__(0, (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand(), _serverRandom), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L207"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L208"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L209"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L212"
        if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L213"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L214"
            return stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString));
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret;
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported;
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L220"
        if ((((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName?.__copy__();
        };
        var __tmp__ = stdgo._internal.crypto.tls.Tls__negotiatealpn._negotiateALPN((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols, false), _selectedProto:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L225"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L226"
            _c._sendAlert((120 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L227"
            return _err;
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol = _selectedProto?.__copy__();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol = _selectedProto?.__copy__();
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._getCertificate(stdgo._internal.crypto.tls.Tls__clienthelloinfo._clientHelloInfo((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx, _c, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello));
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L233"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L234"
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
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L235"
                _c._sendAlert((112 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L237"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L239"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L241"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts) {
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).signedCertificateTimestamps;
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheOk = stdgo._internal.crypto.tls.Tls__supportsecdhe._supportsECDHE((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedCurves, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L247"
        if (((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecdheOk && (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedPoints = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L256"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L257"
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey }))) {
                        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ecSignOk = true;
                    } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rsaSignOk = true;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L265"
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L266"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported signing key type (%T)" : stdgo.GoString), ({
                            final __t__ = _priv.public_();
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L269"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_decrypterdotdecrypter.__type__stdgodot_internaldotcryptodotCrypto_decrypterdotDecrypter) : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.Crypto_decrypter.Decrypter), _1 : false };
            }, _priv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L270"
                {
                    final __type__ = _priv.public_();
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey }))) {
                        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rsaDecryptOk = true;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L274"
                        _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L275"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: unsupported decryption key type (%T)" : stdgo.GoString), ({
                            final __t__ = _priv.public_();
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_publickeydotpublickey.__type__stdgodot_internaldotcryptodotCrypto_publickeydotPublicKey)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L279"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L67"
        {
            var _err = @:assignType (_hs._processClientHello() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L68"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L73"
        {
            var _err = @:assignType (_hs._checkForResumption() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L74"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L76"
        if (({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionState;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L78"
            {
                var _err = @:assignType (_hs._doResumeHandshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L79"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L81"
            {
                var _err = @:assignType (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L82"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L84"
            {
                var _err = @:assignType (_hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L85"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L87"
            {
                var _err = @:assignType (_hs._sendFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L88"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L90"
            {
                var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L91"
                    return _err;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinishedIsFirst = false;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L94"
            {
                var _err = @:assignType (_hs._readFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L95"
                    return _err;
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L100"
            {
                var _err = @:assignType (_hs._pickCipherSuite() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L101"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L103"
            {
                var _err = @:assignType (_hs._doFullHandshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L104"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L106"
            {
                var _err = @:assignType (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L107"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L109"
            {
                var _err = @:assignType (_hs._readFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L110"
                    return _err;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinishedIsFirst = true;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L114"
            {
                var _err = @:assignType (_hs._sendSessionTicket() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L115"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L117"
            {
                var _err = @:assignType (_hs._sendFinished((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L118"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L120"
            {
                var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L121"
                    return _err;
                };
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ekm = stdgo._internal.crypto.tls.Tls__ekmfrommastersecret._ekmFromMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L126"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.store(true);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L128"
        return (null : stdgo.Error);
    }
}
