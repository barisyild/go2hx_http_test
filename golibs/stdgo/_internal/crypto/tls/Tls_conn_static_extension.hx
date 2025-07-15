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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.Conn_asInterface) class Conn_static_extension {
    @:keep
    @:tdfield
    static public function _sessionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/ticket.go#L293"
        return { _0 : (stdgo.Go.setRef(({ _version : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers, _cipherSuite : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite, _createdAt : ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().unix() : stdgo.GoUInt64), _alpnProtocol : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol?.__copy__(), _peerCertificates : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates, _activeCertHandles : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles, _ocspResponse : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse, _scts : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts, _isClient : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient, _extMasterSecret : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret, _verifiedChains : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains } : stdgo._internal.crypto.tls.Tls_sessionstate.SessionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_sessionstatedotsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_sessionstatedotSessionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _quicWaitForSignal( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L400"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L405"
            {
                var __select__ = true;
                var __c__0 = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc;
var __c__1 = null;
                while (__select__) {
                    if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__(({  } : stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12));
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelc;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L408"
                                {
                                    final __ret__:stdgo.Error = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L413"
            {
                var __select__ = true;
                var __c__0 = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signalc;
var __c__1 = null;
                while (__select__) {
                    if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signalc != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__(({  } : stdgo._internal.crypto.tls.Tls_t__struct_12.T__struct_12));
                            {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L415"
                                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.write((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readbuf);
                                (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelc;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L418"
                                {
                                    final __ret__:stdgo.Error = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return __ret__;
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L420"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _quicRejectedEarlyData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (6 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
    }
    @:keep
    @:tdfield
    static public function _quicHandshakeComplete( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (7 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
    }
    @:keep
    @:tdfield
    static public function _quicGetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L367"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transportParams == null) {
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (5 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L372"
        while ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transportParams == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L373"
            {
                var _err = @:assignType (_c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L374"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L377"
        return { _0 : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transportParams, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _quicSetTransportParameters( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (4 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), data : _params } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
    }
    @:keep
    @:tdfield
    static public function _quicWriteCryptoData( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _last:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L346"
        if ((((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.length) > (0 : stdgo.GoInt) : Bool)) {
            _last = (stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[(((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_quiceventdotquicevent.__type__stdgodot_internaldotcryptodottlsdotTls_quiceventdotQUICEvent })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L349"
        if (((({
            final value = _last;
            (value == null || (value : Dynamic).__nil__);
        }) || (@:checkr _last ?? throw stdgo.Error._nullPointerDereference.__underlying__()).kind != ((3 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind)) : Bool) || ((@:checkr _last ?? throw stdgo.Error._nullPointerDereference.__underlying__()).level != _level) : Bool)) {
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (3 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
            _last = (stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[(((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_quiceventdotquicevent.__type__stdgodot_internaldotcryptodottlsdotTls_quiceventdotQUICEvent })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
        };
        (@:checkr _last ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data = ((@:checkr _last ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _quicSetWriteSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (2 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
    }
    @:keep
    @:tdfield
    static public function _quicSetReadSecret( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _suite:stdgo.GoUInt16, _secret:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__append__(({ kind : (1 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind), level : _level, suite : _suite, data : _secret } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
    }
    @:keep
    @:tdfield
    static public function _quicReadHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L318"
        while (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L319"
            {
                var _err = @:assignType (_c._quicWaitForSignal() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L320"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L323"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _sendSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _earlyData:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _suite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L823"
        if (({
            final value = _suite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L824"
            return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unknown cipher suite" : stdgo.GoString));
        };
        var _psk = _suite._expandLabel((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resumptionSecret, ("resumption" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size());
        var _m = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgtls13dott_newsessionticketmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgtls13dotT_newSessionTicketMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>);
        var __tmp__ = _c._sessionState(), _state:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L834"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L835"
            return _err;
        };
        (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret = _psk;
        (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData = _earlyData;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L839"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wrapSession != null) {
            {
                var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wrapSession(_c._connectionStateLocked()?.__copy__(), _state);
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._label = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L841"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L842"
                return _err;
            };
        } else {
            var __tmp__ = _state.bytes(), _stateBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L846"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L847"
                _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L848"
                return _err;
            };
            {
                var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._encryptTicket(_stateBytes, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketKeys);
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._label = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L851"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L852"
                return _err;
            };
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lifetime = ((604800i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32);
        var _ageAdd = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand().read(_ageAdd);
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L862"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L863"
            return _err;
        };
        (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(_ageAdd);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L867"
        if (_earlyData) {
            (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxEarlyData = (-1u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L872"
        {
            var __tmp__ = _c._writeHandshakeRecord(stdgo.Go.asInterface(_m, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgtls13dott_newsessionticketmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgtls13dotT_newSessionTicketMsgTLS13 })), (null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L873"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server_tls13.go#L876"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processCertsFromClient( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _certificate:stdgo._internal.crypto.tls.Tls_certificate.Certificate):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _certificates = _certificate.certificate;
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L862"
        if (_certificates != null) for (_i => _asn1Data in _certificates) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L863"
            {
                {
                    var __tmp__ = stdgo._internal.crypto.x509.X509_parsecertificate.parseCertificate(_asn1Data);
                    _certs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L864"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L865"
                    return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse client certificate: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L867"
            if ((@:checkr _certs[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                var _n = @:assignType ((@:checkr (stdgo.Go.typeAssert((@:checkr _certs[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.bitLen() : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L869"
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkkeysize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L870"
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L871"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client sent certificate containing RSA key larger than %d bits" : stdgo.GoString), new stdgo.AnyInterface(_max, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L876"
        if (((_certs.length == (0 : stdgo.GoInt)) && stdgo._internal.crypto.tls.Tls__requiresclientcert._requiresClientCert((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L877"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L878"
                _c._sendAlert((116 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L880"
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L882"
            return stdgo._internal.errors.Errors_new_.new_(("tls: client didn\'t provide a certificate" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L885"
        if ((((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientAuth >= (3 : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType) : Bool) && ((_certs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _opts = @:assignType ({ roots : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientCAs, currentTime : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time()?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newcertpool.newCertPool(), keyUsages : (new stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>(1, 1, ...[(2 : stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage)]).__setNumber32__() : stdgo.Slice<stdgo._internal.crypto.x509.X509_extkeyusage.ExtKeyUsage>) } : stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L893"
            if ((_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>) != null) for (__3 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L894"
                _opts.intermediates.addCert(_cert);
            };
            var __tmp__ = _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__()), _chains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L898"
            if (_err != null) {
                var _errCertificateInvalid:stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError = ({} : stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L900"
                if (stdgo._internal.errors.Errors_as.as(_err, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError() : stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_unknownauthorityerrordotunknownauthorityerror.__type__stdgodot_internaldotcryptodotx509dotX509_unknownauthorityerrordotUnknownAuthorityError })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_unknownauthorityerror.UnknownAuthorityError>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_unknownauthorityerrordotunknownauthorityerror.__type__stdgodot_internaldotcryptodotx509dotX509_unknownauthorityerrordotUnknownAuthorityError), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_unknownauthorityerrordotunknownauthorityerror.__type__stdgodot_internaldotcryptodotx509dotX509_unknownauthorityerrordotUnknownAuthorityError }))))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L901"
                    _c._sendAlert((48 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else if ((stdgo._internal.errors.Errors_as.as(_err, new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_errCertificateInvalid, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError })) : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificateinvaliderror.CertificateInvalidError>), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificateinvaliderrordotcertificateinvaliderror.__type__stdgodot_internaldotcryptodotx509dotX509_certificateinvaliderrordotCertificateInvalidError })))) && (_errCertificateInvalid.reason == (1 : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L903"
                    _c._sendAlert((45 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L905"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L907"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificateverificationerrordotcertificateverificationerror.__type__stdgodot_internaldotcryptodottlsdotTls_certificateverificationerrordotCertificateVerificationError })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificateverificationerrordotcertificateverificationerror.__type__stdgodot_internaldotcryptodottlsdotTls_certificateverificationerrordotCertificateVerificationError }));
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = _chains;
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = _certs;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse = _certificate.oCSPStaple;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts = _certificate.signedCertificateTimestamps;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L917"
        if (((_certs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L918"
            {
                final __type__ = (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
                if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) || stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L921"
                    _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L922"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client certificate contains an unsupported public key of type %T" : stdgo.GoString), (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L926"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyPeerCertificate != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L927"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyPeerCertificate(_certificates, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L928"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L929"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L933"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L136"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L137"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), _1 : false };
        }, _clientHello = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L140"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L141"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L142"
            return { _0 : null, _1 : stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_clientHello, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg }))), _msg) };
        };
        var _configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        var _originalConfig = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L147"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getConfigForClient != null) {
            var _chi = stdgo._internal.crypto.tls.Tls__clienthelloinfo._clientHelloInfo(_ctx, _c, _clientHello);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L149"
            {
                {
                    var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getConfigForClient(_chi);
                    _configForClient = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L150"
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L151"
                    return { _0 : null, _1 : _err };
                } else if (({
                    final value = _configForClient;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config = _configForClient;
                };
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketKeys = _originalConfig._ticketKeys(_configForClient);
        var _clientVersions = (@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L159"
        if (((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.length) == ((0 : stdgo.GoInt))) {
            _clientVersions = stdgo._internal.crypto.tls.Tls__supportedversionsfrommax._supportedVersionsFromMax((@:checkr _clientHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers);
        };
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._mutualVersion(false, _clientVersions);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers = @:tmpset0 __tmp__._0;
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L163"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L164"
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L165"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client offered only unsupported versions: %x" : stdgo.GoString), new stdgo.AnyInterface(_clientVersions, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) })))) };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._haveVers = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._version = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._version = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L171"
        return { _0 : _clientHello, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _serverHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __tmp__ = _c._readClientHello(_ctx), _clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L43"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L44"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L47"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
            var _hs = @:assignType ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13.T_serverHandshakeStateTLS13);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L53"
            return _hs._handshake();
        };
        var _hs = @:assignType ({ _c : _c, _ctx : _ctx, _clientHello : _clientHello } : stdgo._internal.crypto.tls.Tls_t_serverhandshakestate.T_serverHandshakeState);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_server.go#L61"
        return _hs._handshake();
    }
    @:keep
    @:tdfield
    static public function _handleNewSessionTicket( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L723"
        if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L724"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L725"
            return stdgo._internal.errors.Errors_new_.new_(("tls: received new session ticket from a client" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L728"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled || ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L729"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L733"
        if ((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lifetime == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L734"
            return (null : stdgo.Error);
        };
        var _lifetime = @:assignType (((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lifetime : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L737"
        if ((_lifetime > (604800000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L738"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L739"
            return stdgo._internal.errors.Errors_new_.new_(("tls: received a session ticket with invalid lifetime" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L743"
        if (((({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxEarlyData != ((0u32 : stdgo.GoUInt32)) : Bool) && ((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxEarlyData != (-1u32 : stdgo.GoUInt32)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L744"
            _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L745"
            return stdgo._internal.errors.Errors_new_.new_(("tls: invalid early data for QUIC connection" : stdgo.GoString));
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L749"
        if ((({
            final value = _cipherSuite;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resumptionSecret == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L750"
            return _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        };
        var _psk = _cipherSuite._expandLabel((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resumptionSecret, ("resumption" : stdgo.GoString), (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonce, (@:checkr _cipherSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size());
        var __tmp__ = _c._sessionState(), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L757"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L758"
            _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L759"
            return _err;
        };
        (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret = _psk;
        (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._useBy = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().add(_lifetime).unix() : stdgo.GoUInt64);
        (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd = (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd;
        (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData = (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxEarlyData == (-1u32 : stdgo.GoUInt32)) : Bool);
        var _cs = (stdgo.Go.setRef(({ _ticket : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._label, _session : _session } : stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clientsessionstatedotclientsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_clientsessionstatedotClientSessionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L767"
        {
            var _cacheKey = @:assignType (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
            if (_cacheKey != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L768"
                (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.put(_cacheKey?.__copy__(), _cs);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client_tls13.go#L771"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _clientSessionCacheKey( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1113"
        if ((((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1114"
            return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1116"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1117"
            return ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr().string() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1119"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _getClientCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _cri:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1095"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getClientCertificate != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1096"
            return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getClientCertificate(_cri);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1099"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates != null) for (__3 => _chain in (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1100"
            {
                var _err = @:assignType (_cri.supportsCertificate((stdgo.Go.setRef(_chain, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1101"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1103"
            return { _0 : (stdgo.Go.setRef(_chain, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1107"
        return { _0 : (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _verifyServerCertificate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _certificates:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _activeHandles = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
        var _certs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>((_certificates.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L964"
        if (_certificates != null) for (_i => _asn1Data in _certificates) {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__globalcertcache._globalCertCache._newCert(_asn1Data), _cert:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L966"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L967"
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L968"
                return stdgo._internal.errors.Errors_new_.new_((("tls: failed to parse certificate from server: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L970"
            if ((@:checkr (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKeyAlgorithm == ((1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
                var _n = @:assignType ((@:checkr (stdgo.Go.typeAssert((@:checkr (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n.bitLen() : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L972"
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__checkkeysize._checkKeySize(_n), _max:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L973"
                        _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L974"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server sent certificate containing RSA key larger than %d bits" : stdgo.GoString), new stdgo.AnyInterface(_max, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
            };
            _activeHandles[(_i : stdgo.GoInt)] = _cert;
            _certs[(_i : stdgo.GoInt)] = (@:checkr _cert ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cert;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L981"
        if (!(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).insecureSkipVerify) {
            var _opts = @:assignType ({ roots : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rootCAs, currentTime : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time()?.__copy__(), dNSName : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__(), intermediates : stdgo._internal.crypto.x509.X509_newcertpool.newCertPool() } : stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L989"
            if ((_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>) != null) for (__3 => _cert in (_certs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L990"
                _opts.intermediates.addCert(_cert);
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _certs[(0 : stdgo.GoInt)].verify(_opts?.__copy__());
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L994"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L995"
                _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L996"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ unverifiedCertificates : _certs, err : _err } : stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificateverificationerrordotcertificateverificationerror.__type__stdgodot_internaldotcryptodottlsdotTls_certificateverificationerrordotCertificateVerificationError })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificateverificationerrordotcertificateverificationerror.__type__stdgodot_internaldotcryptodottlsdotTls_certificateverificationerrordotCertificateVerificationError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1000"
        {
            final __type__ = (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotrsadotRsa_publickeydotPublicKey })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotecdsadotecdsa_publickeydotpublickey.__type__stdgodot_internaldotcryptodotecdsadotEcdsa_publickeydotPublicKey })) || stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodoted25519doted25519_publickeydotpublickey.__type__stdgodot_internaldotcryptodoted25519dotEd25519_publickeydotPublicKey)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1002"
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1004"
                        _c._sendAlert((43 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1005"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server\'s certificate contains an unsupported type of public key: %T" : stdgo.GoString), (@:checkr _certs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).publicKey);
                    };
                    break;
                };
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCertHandles = _activeHandles;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates = _certs;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1011"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyPeerCertificate != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1012"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyPeerCertificate(_certificates, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1013"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1014"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1018"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1019"
            {
                var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).verifyConnection(_c._connectionStateLocked()?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1020"
                    _c._sendAlert((42 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1021"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L1025"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pickTLSVersion( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _serverHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _peerVersion = @:assignType ((@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L419"
        if ((@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion != ((0 : stdgo.GoUInt16))) {
            _peerVersion = (@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersion;
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._mutualVersion(true, (new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[_peerVersion]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)), _vers:stdgo.GoUInt16 = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L424"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L425"
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L426"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: server selected unsupported protocol version %x" : stdgo.GoString), new stdgo.AnyInterface(_peerVersion, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))));
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers = _vers;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._haveVers = true;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._version = _vers;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._version = _vers;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L434"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _loadSession( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _session = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>), _earlySecret = (null : stdgo.Slice<stdgo.GoUInt8>), _binderKey = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L283"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sessionTicketsDisabled || ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L284"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticketSupported = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L289"
        if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskModes = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L298"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L299"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cacheKey = @:assignType (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L304"
        if (_cacheKey == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L305"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.get(_cacheKey?.__copy__()), _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L308"
        if ((!_ok || ({
            final value = _cs;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L309"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _session = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._session;
        var _versOk = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L315"
        if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions != null) for (__3 => _v in (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L316"
            if (_v == ((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version)) {
                _versOk = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L318"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L321"
        if (!_versOk) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L322"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L328"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().after((@:checkr (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).notAfter?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L330"
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.put(_cacheKey?.__copy__(), null);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L331"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L333"
        if (!(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).insecureSkipVerify) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L334"
            if (((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L336"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L338"
            {
                var _err = @:assignType ((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)].verifyHostname((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L339"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                        _session = __tmp__._0;
                        _earlySecret = __tmp__._1;
                        _binderKey = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L343"
        if ((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._version != ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L346"
            if (({
                final value = stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites, (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L347"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicket = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L351"
            return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L355"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().after(stdgo._internal.time.Time_unix.unix(((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._useBy : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L356"
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.put(_cacheKey?.__copy__(), null);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L357"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L363"
        if (({
            final value = _cipherSuite;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L364"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var _cipherSuiteOk = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L367"
        if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites != null) for (__4 => _offeredID in (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites) {
            var _offeredSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID(_offeredID);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L369"
            if ((({
                final value = _offeredSuite;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _offeredSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash == (@:checkr _cipherSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash) : Bool)) {
                _cipherSuiteOk = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L371"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L374"
        if (!_cipherSuiteOk) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L375"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : (null : stdgo.Error) };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L378"
        if ((({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__()).earlyData : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L381"
            if (({
                final value = stdgo._internal.crypto.tls.Tls__mutualciphersuitetls13._mutualCipherSuiteTLS13((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites, (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L382"
                if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols != null) for (__5 => _alpn in (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocols) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L383"
                    if (_alpn == ((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alpnProtocol)) {
                        (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData = true;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L385"
                        break;
                    };
                };
            };
        };
        var _ticketAge = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._time().sub(stdgo._internal.time.Time_unix.unix(((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._createdAt : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
        var _identity = @:assignType ({ _label : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ticket, _obfuscatedTicketAge : (((_ticketAge / (1000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt32) + (@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ageAdd : stdgo.GoUInt32) } : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity);
        (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskIdentities = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>(1, 1, ...[_identity?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
        (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[(new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _cipherSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _earlySecret = _cipherSuite._extract((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secret, (null : stdgo.Slice<stdgo.GoUInt8>));
        _binderKey = _cipherSuite._deriveSecret(_earlySecret, ("res binder" : stdgo.GoString), (null : stdgo._internal.hash.Hash_hash.Hash));
        var _transcript = @:assignType ((@:checkr _cipherSuite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var __tmp__ = _hello._marshalWithoutBinders(), _helloBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L405"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L406"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                _session = __tmp__._0;
                _earlySecret = __tmp__._1;
                _binderKey = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L408"
        _transcript.write(_helloBytes);
        var _pskBinders = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(1, 1, ...[_cipherSuite._finishedHash(_binderKey, _transcript)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L410"
        {
            var _err = @:assignType (_hello._updateBinders(_pskBinders) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L411"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.Error; } = { _0 : null, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Slice<stdgo.GoUInt8>), _3 : _err };
                    _session = __tmp__._0;
                    _earlySecret = __tmp__._1;
                    _binderKey = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L414"
        return { _0 : _session, _1 : _earlySecret, _2 : _binderKey, _3 : _err };
    }
    @:keep
    @:tdfield
    static public function _clientHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L174"
            if (({
                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config = stdgo._internal.crypto.tls.Tls__defaultconfig._defaultConfig();
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume = false;
            var __tmp__ = _c._makeClientHello(), _hello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg> = __tmp__._0, _ecdheKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L183"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L184"
                return _err;
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName = (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName?.__copy__();
            var __tmp__ = _c._loadSession(_hello), _session:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = __tmp__._0, _earlySecret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _binderKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L189"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L190"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L192"
            if (({
                final value = _session;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L200"
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L201"
                                {
                                    var _cacheKey = @:assignType (_c._clientSessionCacheKey()?.__copy__() : stdgo.GoString);
                                    if (_cacheKey != ((stdgo.Go.str() : stdgo.GoString))) {
                                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L202"
                                        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).clientSessionCache.put(_cacheKey?.__copy__(), null);
                                    };
                                };
                            };
                        };
                        a();
                    }) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L208"
            {
                var __tmp__ = _c._writeHandshakeRecord(stdgo.Go.asInterface(_hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), (null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L209"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L212"
            if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyData) {
                var _suite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _session ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
                var _transcript = @:assignType ((@:checkr _suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash.new_() : stdgo._internal.hash.Hash_hash.Hash);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L215"
                {
                    var _err = @:assignType (stdgo._internal.crypto.tls.Tls__transcriptmsg._transcriptMsg(stdgo.Go.asInterface(_hello, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })), _transcript) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L216"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
                var _earlyTrafficSecret = _suite._deriveSecret(_earlySecret, ("c e traffic" : stdgo.GoString), _transcript);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L219"
                _c._quicSetWriteSecret((1 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), (@:checkr _suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _earlyTrafficSecret);
            };
            var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L224"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L225"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), _1 : false };
            }, _serverHello = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L229"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L230"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L231"
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_serverHello, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg }))), _msg);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L234"
            {
                var _err = @:assignType (_c._pickTLSVersion(_serverHello) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L235"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            var _maxVers = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._maxSupportedVersion(true) : stdgo.GoUInt16);
            var _tls12Downgrade = @:assignType ((((@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ((stdgo.Go.str("DOWNGRD", 1) : stdgo.GoString)) : Bool);
            var _tls11Downgrade = @:assignType ((((@:checkr _serverHello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ((stdgo.Go.str("DOWNGRD", 0) : stdgo.GoString)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L244"
            if ((((_maxVers == ((772 : stdgo.GoUInt16)) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers <= (771 : stdgo.GoUInt16) : Bool) : Bool) && ((_tls12Downgrade || _tls11Downgrade : Bool)) : Bool) || ((_maxVers == ((771 : stdgo.GoUInt16)) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers <= (770 : stdgo.GoUInt16) : Bool) : Bool) && _tls11Downgrade : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L246"
                _c._sendAlert((47 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L247"
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("tls: downgrade attempt detected, possibly due to a MitM attack or a broken middlebox" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L250"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _ecdheKey : _ecdheKey, _session : _session, _earlySecret : _earlySecret, _binderKey : _binderKey } : stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthandshakestatetls13dott_clienthandshakestatetls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthandshakestatetls13dotT_clientHandshakeStateTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestatetls13.T_clientHandshakeStateTLS13>);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L263"
                {
                    final __ret__:stdgo.Error = _err = _hs._handshake();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _hs = (stdgo.Go.setRef(({ _c : _c, _ctx : _ctx, _serverHello : _serverHello, _hello : _hello, _session : _session } : stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthandshakestatedott_clienthandshakestate.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthandshakestatedotT_clientHandshakeState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthandshakestate.T_clientHandshakeState>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L274"
            {
                var _err = @:assignType (_hs._handshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L275"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L278"
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeClientHello( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>; var _1 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _config = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L44"
        if ((((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName.length == (0 : stdgo.GoInt)) && !(@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).insecureSkipVerify : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L45"
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: either ServerName or InsecureSkipVerify must be specified in the tls.Config" : stdgo.GoString)) };
        };
        var _nextProtosLength = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L49"
        if ((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos != null) for (__3 => _proto in (@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L50"
            {
                var _l = @:assignType (_proto.length : stdgo.GoInt);
                if (((_l == (0 : stdgo.GoInt)) || (_l > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L51"
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid NextProtos value" : stdgo.GoString)) };
                } else {
                    _nextProtosLength = (_nextProtosLength + (((1 : stdgo.GoInt) + _l : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L56"
        if ((_nextProtosLength > (65535 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L57"
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: NextProtos values too large" : stdgo.GoString)) };
        };
        var _supportedVersions = _config._supportedVersions(true);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L61"
        if ((_supportedVersions.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L62"
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: no supported versions satisfy MinVersion and MaxVersion" : stdgo.GoString)) };
        };
        var _clientHelloVersion = @:assignType (_config._maxSupportedVersion(true) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L69"
        if ((_clientHelloVersion > (771 : stdgo.GoUInt16) : Bool)) {
            _clientHelloVersion = (771 : stdgo.GoUInt16);
        };
        var _hello = (stdgo.Go.setRef(({ _vers : _clientHelloVersion, _compressionMethods : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _random : (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _extendedMasterSecret : true, _ocspStapling : true, _scts : true, _serverName : stdgo._internal.crypto.tls.Tls__hostnameinsni._hostnameInSNI((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName?.__copy__())?.__copy__(), _supportedCurves : _config._curvePreferences(), _supportedPoints : (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _secureRenegotiationSupported : true, _alpnProtocols : (@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, _supportedVersions : _supportedVersions } : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L88"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._secureRenegotiation = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceorder._cipherSuitesPreferenceOrder;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L93"
        if (!stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport) {
            _preferenceOrder = stdgo._internal.crypto.tls.Tls__ciphersuitespreferenceordernoaes._cipherSuitesPreferenceOrderNoAES;
        };
        var _configCipherSuites = _config._cipherSuites();
        (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (_configCipherSuites.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L99"
        if (_preferenceOrder != null) for (__4 => _suiteId in _preferenceOrder) {
            var _suite = stdgo._internal.crypto.tls.Tls__mutualciphersuite._mutualCipherSuite(_configCipherSuites, _suiteId);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L101"
            if (({
                final value = _suite;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L102"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L106"
            if ((((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers < (771 : stdgo.GoUInt16) : Bool) && (((@:checkr _suite ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L107"
                continue;
            };
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.__append__(_suiteId) : stdgo.Slice<stdgo.GoUInt16>);
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_config._rand(), (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._random), __5:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L113"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L114"
            return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L122"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L124"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_config._rand(), (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionId), __6:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L125"
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_((("tls: short read from Rand: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L129"
        if (((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__supportedsignaturealgorithms._supportedSignatureAlgorithms();
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L132"
        if (stdgo._internal.crypto.tls.Tls__testingonlyforceclienthellosignaturealgorithms._testingOnlyForceClientHelloSignatureAlgorithms != null) {
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedSignatureAlgorithms = stdgo._internal.crypto.tls.Tls__testingonlyforceclienthellosignaturealgorithms._testingOnlyForceClientHelloSignatureAlgorithms;
        };
        var _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L137"
        if ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions[(0 : stdgo.GoInt)] == ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L139"
            if (((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._supportedVersions.length) == ((1 : stdgo.GoInt))) {
                (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = (null : stdgo.Slice<stdgo.GoUInt16>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L142"
            if (stdgo._internal.crypto.tls.Tls__hasaesgcmhardwaresupport._hasAESGCMHardwareSupport) {
                (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13._defaultCipherSuitesTLS13 : Array<stdgo.GoUInt16>)) : stdgo.Slice<stdgo.GoUInt16>);
            } else {
                (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites = ((@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuites.__append__(...(stdgo._internal.crypto.tls.Tls__defaultciphersuitestls13noaes._defaultCipherSuitesTLS13NoAES : Array<stdgo.GoUInt16>)) : stdgo.Slice<stdgo.GoUInt16>);
            };
            var _curveID = @:assignType (_config._curvePreferences()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L149"
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), __6:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L150"
                    return { _0 : null, _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("tls: CurvePreferences includes unsupported curve" : stdgo.GoString)) };
                };
            };
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls__generateecdhekey._generateECDHEKey(_config._rand(), _curveID);
                _key = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L153"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L154"
                return { _0 : null, _1 : null, _2 : _err };
            };
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keyShares = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>(1, 1, ...[({ _group : _curveID, _data : _key.publicKey().bytes() } : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L159"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var __tmp__ = _c._quicGetTransportParameters(), _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L161"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L162"
                return { _0 : null, _1 : null, _2 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L164"
            if (_p == null) {
                _p = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _hello ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quicTransportParameters = _p;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/handshake_client.go#L170"
        return { _0 : _hello, _1 : _key, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function verifyHostname( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _host:stdgo.GoString):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1643"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1645"
            if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1646"
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: VerifyHostname called on TLS server connection" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1648"
            if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1649"
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake has not yet been performed" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1651"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1652"
                {
                    final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("tls: handshake did not verify certificate chain" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1654"
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates[(0 : stdgo.GoInt)].verifyHostname(_host?.__copy__());
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function oCSPResponse( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1633"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1636"
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
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
                return (null : stdgo.Slice<stdgo.GoUInt8>);
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
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _connectionStateLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _state:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState = ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
        _state.handshakeComplete = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load();
        _state.version = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers;
        _state.negotiatedProtocol = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientProtocol?.__copy__();
        _state.didResume = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume;
        _state.negotiatedProtocolIsMutual = true;
        _state.serverName = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverName?.__copy__();
        _state.cipherSuite = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite;
        _state.peerCertificates = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerCertificates;
        _state.verifiedChains = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._verifiedChains;
        _state.signedCertificateTimestamps = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._scts;
        _state.oCSPResponse = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ocspResponse;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1615"
        if ((((!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didResume || (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extMasterSecret : Bool)) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != (772 : stdgo.GoUInt16)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1616"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinishedIsFirst) {
                _state.tLSUnique = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _state.tLSUnique = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serverFinished.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1622"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).renegotiation != ((0 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
            _state._ekm = stdgo._internal.crypto.tls.Tls__noexportedkeyingmaterial._noExportedKeyingMaterial;
        } else {
            _state._ekm = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ekm;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1627"
        return _state?.__copy__();
    }
    @:keep
    @:tdfield
    static public function connectionState( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1597"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1599"
            {
                final __ret__:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState = _c._connectionStateLocked()?.__copy__();
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
                return ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
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
                return ({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return null;
    @:keep
    @:tdfield
    static public function handshakeContext( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1492"
        return _c._handshakeContext(_ctx);
    }
    @:keep
    @:tdfield
    static public function handshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1476"
        return _c.handshakeContext(stdgo._internal.context.Context_background.background());
    }
    @:keep
    @:tdfield
    static public function _closeNotify( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1448"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1451"
            if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifySent) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1453"
                _c.setWriteDeadline(stdgo._internal.time.Time_now.now().add((5000000000i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__());
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifyErr = _c._sendAlertLocked((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifySent = true;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1457"
                _c.setWriteDeadline(stdgo._internal.time.Time_now.now()?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1459"
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifyErr;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1440"
        if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1441"
            return stdgo._internal.crypto.tls.Tls__errearlyclosewrite._errEarlyCloseWrite;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1444"
        return _c._closeNotify();
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _x:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1402"
        while (true) {
            _x = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCall.load();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1404"
            if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1405"
                return stdgo._internal.net.Net_errclosed.errClosed;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1407"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCall.compareAndSwap(_x, (_x | (1 : stdgo.GoInt32) : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1408"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1411"
        if (_x != ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1418"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close();
        };
        var _alertErr:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1422"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1423"
            {
                var _err = @:assignType (_c._closeNotify() : stdgo.Error);
                if (_err != null) {
                    _alertErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to send closeNotify alert (but connection was closed anyway): %w" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1428"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1429"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1431"
        return _alertErr;
    }
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1356"
            {
                var _err = @:assignType (_c.handshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1357"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1359"
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1362"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1365"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1368"
            while ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.len() == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1369"
                {
                    var _err = @:assignType (_c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1370"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1372"
                while (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1373"
                    {
                        var _err = @:assignType (_c._handlePostHandshakeMessage() : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1374"
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.read(_b), _n:stdgo.GoInt = __tmp__._0, __3:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1388"
            if ((((_n != ((0 : stdgo.GoInt)) && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.len() == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.len() > (0 : stdgo.GoInt) : Bool) : Bool) && (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.bytes()[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType) == (21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1390"
                {
                    var _err = @:assignType (_c._readRecord() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1391"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1395"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handleKeyUpdate( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _keyUpdate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1313"
            if (({
                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1314"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1315"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: received unexpected key update message" : stdgo.GoString)));
            };
            var _cipherSuite = stdgo._internal.crypto.tls.Tls__ciphersuitetls13byid._cipherSuiteTLS13ByID((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipherSuite);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1319"
            if (({
                final value = _cipherSuite;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1320"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
            };
            var _newSecret = _cipherSuite._nextTrafficSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._trafficSecret);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1324"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _newSecret);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1326"
            if ((@:checkr _keyUpdate ?? throw stdgo.Error._nullPointerDereference.__underlying__())._updateRequested) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1327"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
                {
                    final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _msg = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg() : stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keyupdatemsgdott_keyupdatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_keyupdatemsgdotT_keyUpdateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>);
                var __tmp__ = _msg._marshal(), _msgBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1332"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1333"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                {
                    var __tmp__ = _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _msgBytes);
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1336"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1338"
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setErrorLocked(_err);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1339"
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var _newSecret = _cipherSuite._nextTrafficSecret((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._trafficSecret);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1343"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setTrafficSecret(_cipherSuite, (0 : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel), _newSecret);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1346"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handlePostHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1284"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1285"
            return _c._handleRenegotiation();
        };
        var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1289"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1290"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1292"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._retryCount++;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1293"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._retryCount > (16 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1294"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1295"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many non-advancing records" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1298"
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgtls13dott_newsessionticketmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgtls13dotT_newSessionTicketMsgTLS13 }))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1300"
                return _c._handleNewSessionTicket(_msg);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keyupdatemsgdott_keyupdatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_keyupdatemsgdotT_keyUpdateMsg }))) {
                var _msg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1302"
                return _c._handleKeyUpdate(_msg);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1308"
        _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1309"
        return stdgo._internal.fmt.Fmt_errorf.errorf(("tls: received unexpected handshake message of type %T" : stdgo.GoString), _msg);
    }
    @:keep
    @:tdfield
    static public function _handleRenegotiation( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1238"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1239"
                return stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unexpected renegotiation" : stdgo.GoString));
            };
            var __tmp__ = _c._readHandshake((null : stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash)), _msg:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1243"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1244"
                return _err;
            };
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_msg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_hellorequestmsgdott_hellorequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_hellorequestmsgdotT_helloRequestMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>), _1 : false };
            }, _helloReq = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1248"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1249"
                _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1250"
                return stdgo._internal.crypto.tls.Tls__unexpectedmessageerror._unexpectedMessageError(new stdgo.AnyInterface(stdgo.Go.asInterface(_helloReq, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_hellorequestmsgdott_hellorequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_hellorequestmsgdotT_helloRequestMsg), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_hellorequestmsgdott_hellorequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_hellorequestmsgdotT_helloRequestMsg }))), _msg);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1253"
            if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1254"
                return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1257"
            {
                final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).renegotiation;
                if (__value__ == ((0 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1259"
                    return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                } else if (__value__ == ((1 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1261"
                    if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes > (1 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1262"
                        return _c._sendAlert((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    };
                } else if (__value__ == ((2 : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport))) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1267"
                    _c._sendAlert((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1268"
                    return stdgo._internal.errors.Errors_new_.new_(("tls: unknown Renegotiation value" : stdgo.GoString));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1271"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1274"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.store(false);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1275"
            {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr = _c._clientHandshake(stdgo._internal.context.Context_background.background());
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1276"
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakes++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1278"
            {
                final __ret__:stdgo.Error = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1182"
            while (true) {
                var _x = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCall.load() : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1184"
                if ((_x & (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((0 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1185"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errclosed.errClosed };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1187"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCall.compareAndSwap(_x, (_x + (2 : stdgo.GoInt32) : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1188"
                    break;
                };
            };
            {
                var _a0 = (-2 : stdgo.GoInt32);
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeCall.add;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1193"
            {
                var _err = @:assignType (_c.handshake() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1194"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1197"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1200"
            {
                var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._err : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1201"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1204"
            if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load()) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1205"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1208"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifySent) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1209"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.crypto.tls.Tls__errshutdown._errShutdown };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _m:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1222"
            if ((((_b.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == (769 : stdgo.GoUInt16)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1223"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._cipher, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_blockmodedotblockmode.__type__stdgodot_internaldotcryptodotcipherdotCipher_blockmodedotBlockMode) : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode), _1 : false };
                    }, __3 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var __tmp__ = _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1225"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1226"
                            {
                                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setErrorLocked(_err) };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        {
                            final __tmp__0 = (1 : stdgo.GoInt);
                            final __tmp__1 = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _m = @:binopAssign __tmp__0;
                            _b = @:binopAssign __tmp__1;
                        };
                    };
                };
            };
            var __tmp__ = _c._writeRecordLocked((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1233"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_n + _m : stdgo.GoInt), _1 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setErrorLocked(_err) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unmarshalHandshakeMessage( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _m:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage = (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1103"
        {
            final __value__ = _data[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_hellorequestmsgdott_hellorequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_hellorequestmsgdotT_helloRequestMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_hellorequestmsg.T_helloRequestMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_hellorequestmsgdott_hellorequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_hellorequestmsgdotT_helloRequestMsg }));
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clienthellomsg.T_clientHelloMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clienthellomsgdott_clienthellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clienthellomsgdotT_clientHelloMsg }));
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellomsg.T_serverHelloMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellomsgdott_serverhellomsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellomsgdotT_serverHelloMsg }));
            } else if (__value__ == ((4 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1111"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgtls13dott_newsessionticketmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgtls13dotT_newSessionTicketMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgtls13dott_newsessionticketmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgtls13dotT_newSessionTicketMsgTLS13 }));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_newsessionticketmsgdott_newsessionticketmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_newsessionticketmsgdotT_newSessionTicketMsg }));
                };
            } else if (__value__ == ((11 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1117"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgtls13dott_certificatemsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgtls13dotT_certificateMsgTLS13 }));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsg.T_certificateMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatemsgdott_certificatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatemsgdotT_certificateMsg }));
                };
            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1123"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgtls13dott_certificaterequestmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgtls13dotT_certificateRequestMsgTLS13 })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13.T_certificateRequestMsgTLS13>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgtls13dott_certificaterequestmsgtls13.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgtls13dotT_certificateRequestMsgTLS13 }));
                } else {
                    _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgdott_certificaterequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgdotT_certificateRequestMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg.T_certificateRequestMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificaterequestmsgdott_certificaterequestmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificaterequestmsgdotT_certificateRequestMsg }));
                };
            } else if (__value__ == ((22 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatestatusmsgdott_certificatestatusmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatestatusmsgdotT_certificateStatusMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatestatusmsg.T_certificateStatusMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificatestatusmsgdott_certificatestatusmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificatestatusmsgdotT_certificateStatusMsg }));
            } else if (__value__ == ((12 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverkeyexchangemsgdott_serverkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverkeyexchangemsgdotT_serverKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg.T_serverKeyExchangeMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverkeyexchangemsgdott_serverkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverkeyexchangemsgdotT_serverKeyExchangeMsg }));
            } else if (__value__ == ((14 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_serverhellodonemsg.T_serverHelloDoneMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_serverhellodonemsgdott_serverhellodonemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_serverhellodonemsgdotT_serverHelloDoneMsg }));
            } else if (__value__ == ((16 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_clientkeyexchangemsg.T_clientKeyExchangeMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_clientkeyexchangemsgdott_clientkeyexchangemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_clientkeyexchangemsgdotT_clientKeyExchangeMsg }));
            } else if (__value__ == ((15 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({ _hasSignatureAlgorithm : ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers >= (771 : stdgo.GoUInt16) : Bool) } : stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificateverifymsg.T_certificateVerifyMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_certificateverifymsgdott_certificateverifymsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_certificateverifymsgdotT_certificateVerifyMsg }));
            } else if (__value__ == ((20 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_finishedmsg.T_finishedMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_finishedmsgdott_finishedmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_finishedmsgdotT_finishedMsg }));
            } else if (__value__ == ((8 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_encryptedextensionsmsgdott_encryptedextensionsmsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_encryptedextensionsmsgdotT_encryptedExtensionsMsg }));
            } else if (__value__ == ((5 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_endofearlydatamsgdott_endofearlydatamsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_endofearlydatamsgdotT_endOfEarlyDataMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_endofearlydatamsg.T_endOfEarlyDataMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_endofearlydatamsgdott_endofearlydatamsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_endofearlydatamsgdotT_endOfEarlyDataMsg }));
            } else if (__value__ == ((24 : stdgo.GoUInt8))) {
                _m = stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keyupdatemsgdott_keyupdatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_keyupdatemsgdotT_keyUpdateMsg })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_keyupdatemsg.T_keyUpdateMsg>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keyupdatemsgdott_keyupdatemsg.__type__stdgodot_internaldotcryptodottlsdotTls_t_keyupdatemsgdotT_keyUpdateMsg }));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1151"
                return { _0 : (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage), _1 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) };
            };
        };
        _data = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1159"
        if (!_m._unmarshal(_data)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1160"
            return { _0 : (null : stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage), _1 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1163"
        if (_transcript != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1164"
            _transcript.write(_data);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1167"
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readHandshake( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1085"
        {
            var _err = @:assignType (_c._readHandshakeBytes((4 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1086"
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        var _data = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.bytes();
        var _n = @:assignType ((((_data[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_data[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1090"
        if ((_n > (65536 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1091"
            _c._sendAlertLocked((80 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1092"
            return { _0 : (null : stdgo.AnyInterface), _1 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((65536 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1094"
        {
            var _err = @:assignType (_c._readHandshakeBytes(((4 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1095"
                return { _0 : (null : stdgo.AnyInterface), _1 : _err };
            };
        };
        _data = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.next(((4 : stdgo.GoInt) + _n : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1098"
        return ({
            @:explicitConversion final __tmp__ = _c._unmarshalHandshakeMessage(_data, _transcript);
            { _0 : ({
                final __t__ = __tmp__._0;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_handshakemessagedott_handshakemessage.__type__stdgodot_internaldotcryptodottlsdotTls_t_handshakemessagedotT_handshakeMessage)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function _readHandshakeBytes( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1070"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1071"
            return _c._quicReadHandshakeBytes(_n);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1073"
        while (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1074"
            {
                var _err = @:assignType (_c._readRecord() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1075"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1078"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeChangeCipherRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1062"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _c._writeRecordLocked((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1065"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeHandshakeRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _msg:stdgo._internal.crypto.tls.Tls_t_handshakemessage.T_handshakeMessage, _transcript:stdgo._internal.crypto.tls.Tls_t_transcripthash.T_transcriptHash):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1045"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _msg._marshal(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1049"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1050"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1052"
            if (_transcript != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1053"
                _transcript.write(_data);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1056"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _c._writeRecordLocked((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), _data);
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeRecordLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L971"
            if (({
                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L972"
                if (_typ != ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L973"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: sending non-handshake message to QUIC transport" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L975"
                _c._quicWriteCryptoData((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._level, _data);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L976"
                if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L977"
                    {
                        var __tmp__ = _c._flush(), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L978"
                            return { _0 : (0 : stdgo.GoInt), _1 : _err };
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L981"
                return { _0 : (_data.length), _1 : (null : stdgo.Error) };
            };
            var _outBufPtr = (stdgo.Go.typeAssert(stdgo._internal.crypto.tls.Tls__outbufpool._outBufPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _outBuf = (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        @:_1 (_outBufPtr : stdgo.Slice<stdgo.GoUInt8>).__setData__(_outBuf);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L993"
                        stdgo._internal.crypto.tls.Tls__outbufpool._outBufPool.put(new stdgo.AnyInterface(_outBufPtr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
                    };
                    a();
                }) });
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L997"
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _m = @:assignType (_data.length : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L999"
                {
                    var _maxPayload = @:assignType (_c._maxPayloadSizeForWrite(_typ) : stdgo.GoInt);
                    if ((_m > _maxPayload : Bool)) {
                        _m = _maxPayload;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.crypto.tls.Tls__sliceforappend._sliceForAppend((_outBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (5 : stdgo.GoInt));
                    _outBuf = @:tmpset0 __tmp__._1;
                };
                _outBuf[(0 : stdgo.GoInt)] = (_typ : stdgo.GoUInt8);
                var _vers = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers : stdgo.GoUInt16);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1006"
                if (_vers == ((0 : stdgo.GoUInt16))) {
                    _vers = (769 : stdgo.GoUInt16);
                } else if (_vers == ((772 : stdgo.GoUInt16))) {
                    _vers = (771 : stdgo.GoUInt16);
                };
                _outBuf[(1 : stdgo.GoInt)] = ((_vers >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
                _outBuf[(2 : stdgo.GoInt)] = (_vers : stdgo.GoUInt8);
                _outBuf[(3 : stdgo.GoInt)] = ((_m >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
                _outBuf[(4 : stdgo.GoInt)] = (_m : stdgo.GoUInt8);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._encrypt(_outBuf, (_data.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config._rand());
                    _outBuf = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1022"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1023"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1025"
                {
                    var __tmp__ = _c._write(_outBuf), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1026"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                _n = (_n + (_m) : stdgo.GoInt);
                _data = (_data.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1032"
            if (((_typ == (20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers != (772 : stdgo.GoUInt16)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1033"
                {
                    var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1034"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _c._sendAlertLocked((stdgo.Go.typeAssert(({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L1038"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L950"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sendBuf.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L951"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.write((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sendBuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesSent = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sendBuf = (null : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering = false;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L958"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L939"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buffering) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sendBuf = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sendBuf.__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L941"
            return { _0 : (_data.length), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.write(_data), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesSent = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesSent + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L946"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _maxPayloadSizeForWrite( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L892"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dynamicRecordSizingDisabled || (_typ != (23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L893"
            return (16384 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L896"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesSent >= (131072i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L897"
            return (16384 : stdgo.GoInt);
        };
        var _payloadBytes = @:assignType ((1203 : stdgo.GoInt) - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._explicitNonceLen() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L902"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._cipher;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L903"
            {
                final __type__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._cipher;
                if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_streamdotstream.__type__stdgodot_internaldotcryptodotcipherdotCipher_streamdotStream)) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_stream.Stream = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_stream.Stream) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._mac.size()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcipherdotcipher_aeaddotaead.__type__stdgodot_internaldotcryptodotcipherdotCipher_aeaddotAEAD)) {
                    var _ciph:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__ == null ? (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD) : __type__.__underlying__().value;
                    _payloadBytes = (_payloadBytes - (_ciph.overhead()) : stdgo.GoInt);
                } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_cbcmodedott_cbcmode.__type__stdgodot_internaldotcryptodottlsdotTls_t_cbcmodedotT_cbcMode)) {
                    var _ciph:stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode = __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__() == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__ == null ? (null : stdgo._internal.crypto.tls.Tls_t_cbcmode.T_cbcMode) : __type__.__underlying__().value;
                    var _blockSize = @:assignType (_ciph.blockSize() : stdgo.GoInt);
                    _payloadBytes = (((_payloadBytes & (-1 ^ (_blockSize - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _payloadBytes = (_payloadBytes - ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._mac.size()) : stdgo.GoInt);
                } else {
                    var _ciph:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L917"
                    throw new stdgo.AnyInterface(("unknown cipher type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L920"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L921"
            _payloadBytes--;
        };
        var _pkt = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._packetsSent : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L926"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._packetsSent++;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L927"
        if ((_pkt > (1000i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L928"
            return (16384 : stdgo.GoInt);
        };
        var _n = @:assignType (_payloadBytes * ((_pkt + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L932"
        if ((_n > (16384 : stdgo.GoInt) : Bool)) {
            _n = (16384 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L935"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _sendAlert( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L856"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L858"
            {
                final __ret__:stdgo.Error = _c._sendAlertLocked(_err);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _sendAlertLocked( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _err:stdgo._internal.crypto.tls.Tls_t_alert.T_alert):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L833"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L834"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L837"
        {
            final __value__ = _err;
            if (__value__ == ((100 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)) || __value__ == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmp[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
            } else {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmp[(0 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
            };
        };
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmp[(1 : stdgo.GoInt)] = (_err : stdgo.GoUInt8);
        var __tmp__ = _c._writeRecordLocked((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType), ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmp.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3:stdgo.GoInt = __tmp__._0, _writeErr:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L846"
        if (_err == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L848"
            return _writeErr;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L851"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("local error" : stdgo.GoString), err : stdgo.Go.asInterface(_err, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })));
    }
    @:keep
    @:tdfield
    static public function _readFromUntil( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L819"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.len() >= _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L820"
            return (null : stdgo.Error);
        };
        var _needs = @:assignType (_n - (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L826"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.grow((_needs + (512 : stdgo.GoInt) : stdgo.GoInt));
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.readFrom(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader(_r, (_needs : stdgo.GoInt64)) : stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_atleastreaderdott_atleastreader.__type__stdgodot_internaldotcryptodottlsdotTls_t_atleastreaderdotT_atLeastReader })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_atleastreaderdott_atleastreader.__type__stdgodot_internaldotcryptodottlsdotTls_t_atleastreaderdotT_atLeastReader }))), __3:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L828"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _retryReadRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L785"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._retryCount++;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L786"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._retryCount > (16 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L787"
            _c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L788"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: too many ignored records" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L790"
        return _c._readRecordOrCCS(_expectChangeCipherSpec);
    }
    @:keep
    @:tdfield
    static public function _readRecordOrCCS( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _expectChangeCipherSpec:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L609"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L610"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._err;
        };
        var _handshakeComplete = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load() : Bool);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L615"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.len() != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L616"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with pending application data" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L618"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.reset((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L620"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L621"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: attempted to read record with QUIC transport" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L625"
        {
            var _err = @:assignType (_c._readFromUntil((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, (5 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L629"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.len() == (0 : stdgo.GoInt)) : Bool)) {
                    _err = stdgo._internal.io.Io_eof.eOF;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L632"
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
                    if ((!_ok || !_e.temporary() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L633"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_err);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L635"
                return _err;
            };
        };
        var _hdr = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.bytes().__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _typ = @:assignType (_hdr[(0 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L644"
        if ((!_handshakeComplete && (_typ == (128 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L645"
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L646"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), ("unsupported SSLv2 handshake received" : stdgo.GoString)), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError));
        };
        var _vers = @:assignType (((_hdr[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_hdr[(2 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _expectedVers = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L651"
        if (_expectedVers == ((772 : stdgo.GoUInt16))) {
            _expectedVers = (771 : stdgo.GoUInt16);
        };
        var _n = @:assignType (((_hdr[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_hdr[(4 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L657"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._haveVers && (_vers != _expectedVers) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L658"
            _c._sendAlert((70 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            var _msg = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("received record with version %x when expecting version %x" : stdgo.GoString), new stdgo.AnyInterface(_vers, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))), new stdgo.AnyInterface(_expectedVers, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L660"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), _msg?.__copy__()), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L662"
        if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._haveVers) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L667"
            if (((((_typ != (21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && (_typ != (22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) || (_vers >= (4096 : stdgo.GoUInt16) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L668"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, ("first record does not look like a TLS handshake" : stdgo.GoString)), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L671"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16)) && (_n > (16640 : stdgo.GoInt) : Bool) : Bool) || (_n > (18432 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L672"
            _c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert));
            var _msg = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("oversized record received with length %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L674"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface(_c._newRecordHeaderError((null : stdgo._internal.net.Net_conn.Conn), _msg?.__copy__()), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L676"
        {
            var _err = @:assignType (_c._readFromUntil((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, ((5 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L677"
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
                    if ((!_ok || !_e.temporary() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L678"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_err);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L680"
                return _err;
            };
        };
        var _record = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.next(((5 : stdgo.GoInt) + _n : stdgo.GoInt));
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._decrypt(_record), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _typ:stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L686"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L687"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L689"
        if (((_data.length) > (16384 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L690"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((22 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L694"
        if ((({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._cipher;
            (value == null || (value : Dynamic).__nil__);
        }) && (_typ == (23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L695"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L698"
        if (((_typ != ((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) && _typ != ((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool) && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._retryCount = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L704"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16)) && _typ != ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType)) : Bool) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L705"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L708"
        {
            final __value__ = _typ;
            if (__value__ == ((21 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L713"
                if (({
                    final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L714"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L716"
                if ((_data.length) != ((2 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L717"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L719"
                if ((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert) == ((0 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L720"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.io.Io_eof.eOF);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L722"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L723"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L725"
                {
                    final __value__ = _data[(0 : stdgo.GoInt)];
                    if (__value__ == ((1 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L728"
                        return _c._retryReadRecord(_expectChangeCipherSpec);
                    } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L730"
                        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("remote error" : stdgo.GoString), err : stdgo.Go.asInterface((_data[(1 : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_t_alert.T_alert), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L732"
                        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((20 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L736"
                if (((_data.length != (1 : stdgo.GoInt)) || (_data[(0 : stdgo.GoInt)] != (1 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L737"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((50 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L740"
                if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L741"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L748"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._vers == ((772 : stdgo.GoUInt16))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L749"
                    return _c._retryReadRecord(_expectChangeCipherSpec);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L751"
                if (!_expectChangeCipherSpec) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L752"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L754"
                {
                    var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._changeCipherSpec() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L755"
                        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((stdgo.Go.typeAssert(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_alertdott_alert.__type__stdgodot_internaldotcryptodottlsdotTls_t_alertdotT_alert) : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                    };
                };
            } else if (__value__ == ((23 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L759"
                if ((!_handshakeComplete || _expectChangeCipherSpec : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L760"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L764"
                if ((_data.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L765"
                    return _c._retryReadRecord(_expectChangeCipherSpec);
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L770"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._input.reset(_data);
            } else if (__value__ == ((22 : stdgo._internal.crypto.tls.Tls_t_recordtype.T_recordType))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L773"
                if (((_data.length == (0 : stdgo.GoInt)) || _expectChangeCipherSpec : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L774"
                    return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L776"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.write(_data);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L710"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(_c._sendAlert((10 : stdgo._internal.crypto.tls.Tls_t_alert.T_alert)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L779"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readChangeCipherSpec( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L591"
        return _c._readRecordOrCCS(true);
    }
    @:keep
    @:tdfield
    static public function _readRecord( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L587"
        return _c._readRecordOrCCS(false);
    }
    @:keep
    @:tdfield
    static public function _newRecordHeaderError( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _conn:stdgo._internal.net.Net_conn.Conn, _msg:stdgo.GoString):stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        var _err = ({} : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError);
        _err.msg = _msg?.__copy__();
        _err.conn = _conn;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L582"
        (_err.recordHeader.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rawInput.bytes());
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L583"
        return _err = _err?.__copy__();
    }
    @:keep
    @:tdfield
    static public function netConn( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_conn.Conn {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L162"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L155"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setWriteDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L148"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setReadDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L142"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setDeadline(_t?.__copy__());
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L135"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
    }
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/conn.go#L130"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.localAddr();
    }
}
