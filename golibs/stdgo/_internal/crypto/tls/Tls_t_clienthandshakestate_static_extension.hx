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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_clientHandshakeState_asInterface) class T_clientHandshakeState_static_extension {
    @:keep
    @:tdfield
    static public function _sendFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L928"
        {
            var _err = @:assignType (_c._writeChangeCipherRecord() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L929"
                return _err;
            };
        };
        var _finished = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>);
        (@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._clientSum((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L934"
        {
            var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_finished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L935"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L937"
        _out.__copyTo__((@:checkr _finished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L938"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _saveSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L904"
        if ((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L905"
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var _cacheKey = @:assignType (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L910"
        if (_cacheKey == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L911"
            return (null : stdgo.Error);
        };
        var __tmp__ = _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L915"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L916"
            return _err;
        };
        (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret;
        var _cs = (stdgo.Go.setRef(({ _ticket : (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket, _session : _session } : stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clientsessionstatedotclientsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_clientsessionstatedotClientSessionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L921"
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.put(_cacheKey?.__copy__(), _cs);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L922"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readSessionTicket( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L879"
        if (!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L880"
            return (null : stdgo.Error);
        };
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L884"
        if (!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L885"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L886"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server sent unrequested session ticket" : stdgo.GoString));
        };
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L890"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L891"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>), _1 : false };
        }, _sessionTicketMsg = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L894"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L895"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L896"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_sessionTicketMsg, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg }))), _msg);
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket = (@:checkr _sessionTicketMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L900"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFinished( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L846"
        {
            var _err = @:assignType (_c._readChangeCipherSpec() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L847"
                return _err;
            };
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L854"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L855"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), _1 : false };
        }, _serverFinished = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L858"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L859"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L860"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_serverFinished, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg }))), _msg);
        };
        var _verify = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._serverSum((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L864"
        if (((_verify.length != ((@:checkr _serverFinished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData.length)) || (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_verify, (@:checkr _serverFinished ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifyData) != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L866"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L867"
            return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s Finished message was incorrect" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L870"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_serverFinished, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L871"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L874"
        _out.__copyTo__(_verify);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L875"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processServerHello( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L751"
        {
            var _err = @:assignType (_hs._pickCipherSuite() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L752"
                return { _0 : false, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L755"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionMethod != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L756"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L757"
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server selected unsupported compression format" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L760"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes == (0 : stdgo.GoInt)) && (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiationSupported : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L762"
            if (((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation.length) != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L763"
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L764"
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: initial handshake had non-empty renegotiation extension" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L768"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes > (0 : stdgo.GoInt) : Bool) && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation : Bool)) {
            var _expectedSecureRenegotiation:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(24, 24).__setNumber32__();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L770"
            (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L771"
            (_expectedSecureRenegotiation.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L772"
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation, (_expectedSecureRenegotiation.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L773"
                _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L774"
                return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: incorrect renegotiation extension contents" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L778"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__checkalpn._checkALPN((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol?.__copy__(), false) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L779"
                _c._sendAlert((110 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L780"
                return { _0 : false, _1 : _err };
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol?.__copy__();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L786"
        if (!_hs._serverResumedSession()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L787"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L790"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version != ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L791"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L792"
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different version" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L795"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite != ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L796"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L797"
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different cipher suite" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L801"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret != ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L802"
            _c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L803"
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: server resumed a session with a different EMS extension" : stdgo.GoString)) };
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L815"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts.length == (0 : stdgo.GoInt)) && ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts.length != (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L819"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _serverResumedSession( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):Bool {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L744"
        return ((({
            final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId != null : Bool) && stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId) : Bool);
    }
    @:keep
    @:tdfield
    static public function _establishKeys( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = stdgo._internal.crypto.tls.Tls__keysfrommastersecret._keysFromMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._macLen, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyLen, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ivLen), _clientMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _serverMAC:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _clientKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _serverKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._3, _clientIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._4, _serverIV:stdgo.Slice<stdgo.GoUInt8> = __tmp__._5;
        var _clientCipher:stdgo.AnyInterface = (null : stdgo.AnyInterface), _serverCipher:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _clientHash:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash), _serverHash:stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L726"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher != null) {
            _clientCipher = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher(_clientKey, _clientIV, false);
            _clientHash = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mac(_clientMAC);
            _serverCipher = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher(_serverKey, _serverIV, true);
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
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L736"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._prepareCipherSpec((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _serverCipher, _serverHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L737"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._prepareCipherSpec((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _clientCipher, _clientHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L738"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _doFullHandshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L537"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L538"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), _1 : false };
        }, _certMsg = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L541"
        if ((!_ok || ((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L542"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L543"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_certMsg, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg }))), _msg);
        };
        {
            var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })));
            _msg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L547"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L548"
            return _err;
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatestatusmsgdott_certificatestatusmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatestatusmsgdotT_certificateStatusMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>), _1 : false };
        }, _cs = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L552"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L556"
            if (!(@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspStapling) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L561"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L562"
                return stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected CertificateStatus message" : stdgo.GoString));
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._response;
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L568"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L569"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L573"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L576"
            {
                var _err = @:assignType (_c._verifyServerCertificate((@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L577"
                    return _err;
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L586"
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).raw, (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates[(0 : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L587"
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L588"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server\'s identity changed during renegotiation" : stdgo.GoString));
            };
        };
        var _keyAgreement = @:assignType ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ka((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers) : stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverkeyexchangemsgdott_serverkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverkeyexchangemsgdotT_serverKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>), _1 : false };
        }, _skx = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L595"
        if (_ok) {
            _err = _keyAgreement._processServerKeyExchange((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)], _skx);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L597"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L598"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L599"
                return _err;
            };
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L603"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L604"
                return _err;
            };
        };
        var _chainToSend:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
        var _certRequested:Bool = false;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgdott_certificaterequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgdotT_certificateRequestMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>), _1 : false };
        }, _certReq = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L611"
        if (_ok) {
            _certRequested = true;
            var _cri = stdgo._internal.crypto.tls.Tls__certificaterequestinfofrommsg._certificateRequestInfoFromMsg((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _certReq);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L615"
            {
                {
                    var __tmp__ = _c._getClientCertificate(_cri);
                    _chainToSend = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L616"
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L617"
                    return _err;
                };
            };
            {
                var __tmp__ = _c._readHandshake(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })));
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L621"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L622"
                return _err;
            };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>), _1 : false };
        }, _shd = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L627"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L628"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L629"
            return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_shd, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg }))), _msg);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L635"
        if (_certRequested) {
            _certMsg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>);
            (@:checkr _certMsg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._certificates = (@:checkr _chainToSend ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L638"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certMsg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L639"
                    return _err;
                };
            };
        };
        var __tmp__ = _keyAgreement._generateClientKeyExchange((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)]), _preMasterSecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L644"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L645"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L646"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L648"
        if (({
            final value = _ckx;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L649"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_ckx, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L650"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L654"
        if ((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extendedMasterSecret) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret = true;
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = stdgo._internal.crypto.tls.Tls__extmasterfrompremastersecret._extMasterFromPreMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, _preMasterSecret, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash.sum());
        } else {
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret = stdgo._internal.crypto.tls.Tls__masterfrompremastersecret._masterFromPreMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, _preMasterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L662"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._writeKeyLog(("CLIENT_RANDOM" : stdgo.GoString), (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L663"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L664"
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to write to key log: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L667"
        if ((({
            final value = _chainToSend;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (((@:checkr _chainToSend ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificate.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _certVerify = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg() : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>);
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr _chainToSend ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_signerdotsigner.__type__stdgodot_internaldotcryptodotCrypto_signerdotSigner) : stdgo._internal.crypto.Crypto_signer.Signer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.crypto.Crypto_signer.Signer), _1 : false };
            }, _key = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L671"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L672"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L673"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate private key of type %T does not implement crypto.Signer" : stdgo.GoString), ({
                    final __t__ = (@:checkr _chainToSend ?? throw stdgo.Error._nullPointerDereference.__underlying__()).privateKey;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_privatekeydotprivatekey.__type__stdgodot_internaldotcryptodotCrypto_privatekeydotPrivateKey)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            var _sigType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            var _sigHash:stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L678"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool)) {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__selectsignaturescheme._selectSignatureScheme((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _chainToSend, (@:checkr _certReq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms), _signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L680"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L681"
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L682"
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__typeandhashfromsignaturescheme._typeAndHashFromSignatureScheme(_signatureAlgorithm);
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L685"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L686"
                    return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
                (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasSignatureAlgorithm = true;
                (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signatureAlgorithm = _signatureAlgorithm;
            } else {
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__legacytypeandhashfrompublickey._legacyTypeAndHashFromPublicKey(_key.public_());
                    _sigType = @:tmpset0 __tmp__._0;
                    _sigHash = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L692"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L693"
                    _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L694"
                    return _err;
                };
            };
            var _signed = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._hashForClientCertificate(_sigType, _sigHash);
            var _signOpts = @:assignType (stdgo.Go.asInterface(_sigHash, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash) : stdgo._internal.crypto.Crypto_signeropts.SignerOpts);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L700"
            if (_sigType == ((226 : stdgo.GoUInt8))) {
                _signOpts = stdgo.Go.asInterface((stdgo.Go.setRef(({ saltLength : (-1 : stdgo.GoInt), hash : _sigHash } : stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_pssoptionsdotpssoptions.__type__stdgodot_internaldotcryptodotrsadotRsa_pssoptionsdotPSSOptions }));
            };
            {
                var __tmp__ = _key.sign((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand(), _signed, _signOpts);
                (@:checkr _certVerify ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signature = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L704"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L705"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L706"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L709"
            {
                var __tmp__ = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._writeHandshakeRecord(stdgo.Go.asInterface(_certVerify, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L710"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L714"
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._discardHandshakeBuffer();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L716"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pickCipherSuite( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L524"
        {
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite = stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite((@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
            if (({
                final value = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L525"
                (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c._sendAlert((40 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L526"
                return stdgo._internal.errors.Errors_new_.new_(("tls: server chose an unconfigured cipher suite" : stdgo.GoString));
            };
        };
        (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite = (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L530"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handshake( _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>):stdgo.Error {
        @:recv var _hs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState> = _hs;
        var _c = (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c;
        var __tmp__ = _hs._processServerHello(), _isResume:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L443"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L444"
            return _err;
        };
        (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash = stdgo._internal.crypto.tls.Tls__newfinishedhash._newFinishedHash((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L453"
        if ((_isResume || ((((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates.length == (0 : stdgo.GoInt)) && ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getClientCertificate == null) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L454"
            (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash._discardHandshakeBuffer();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L457"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L458"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L460"
        {
            var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._finishedHash, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedhash.T_finishedHash>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedhashdott_finishedhash.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedhashdotT_finishedHash }))) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L461"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume = _isResume;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L466"
        if (_isResume) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L467"
            {
                var _err = @:assignType (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L468"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L470"
            {
                var _err = @:assignType (_hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L471"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L473"
            {
                var _err = @:assignType (_hs._readFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L474"
                    return _err;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinishedIsFirst = false;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L480"
            if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L481"
                {
                    var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L482"
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L483"
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L486"
            {
                var _err = @:assignType (_hs._sendFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L487"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L489"
            {
                var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L490"
                    return _err;
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L493"
            {
                var _err = @:assignType (_hs._doFullHandshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L494"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L496"
            {
                var _err = @:assignType (_hs._establishKeys() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L497"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L499"
            {
                var _err = @:assignType (_hs._sendFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L500"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L502"
            {
                var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L503"
                    return _err;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinishedIsFirst = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L506"
            {
                var _err = @:assignType (_hs._readSessionTicket() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L507"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L509"
            {
                var _err = @:assignType (_hs._readFinished(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L510"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L513"
        {
            var _err = @:assignType (_hs._saveSessionTicket() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L514"
                return _err;
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ekm = stdgo._internal.crypto.tls.Tls__ekmfrommastersecret._ekmFromMasterSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._suite, (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._masterSecret, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random, (@:checkr (@:checkr _hs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L518"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.store(true);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L520"
        return (null : stdgo.Error);
    }
}
