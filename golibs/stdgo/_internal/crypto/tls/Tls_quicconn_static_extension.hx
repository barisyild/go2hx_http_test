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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.QUICConn_asInterface) class QUICConn_static_extension {
    @:keep
    @:tdfield
    static public function setTransportParameters( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L288"
        if (_params == null) {
            _params = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transportParams = _params;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L292"
        if ((@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._started) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L293"
            (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signalc.__get__();
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L294"
            (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc.__get__();
        };
    }
    @:keep
    @:tdfield
    static public function connectionState( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L280"
        return (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.connectionState()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sendSessionTicket( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _opts:stdgo._internal.crypto.tls.Tls_quicsessionticketoptions.QUICSessionTicketOptions):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        var _c = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L265"
        if (!(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHandshakeComplete.load()) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L266"
            return stdgo._internal.crypto.tls.Tls__quicerror._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called before handshake completed" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L268"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isClient) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L269"
            return stdgo._internal.crypto.tls.Tls__quicerror._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called on the client" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L271"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketSent) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L272"
            return stdgo._internal.crypto.tls.Tls__quicerror._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called multiple times" : stdgo.GoString)));
        };
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionTicketSent = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L275"
        return stdgo._internal.crypto.tls.Tls__quicerror._quicError(_c._sendSessionTicket(_opts.earlyData));
    }
    @:keep
    @:tdfield
    static public function handleData( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _c = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L220"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._level != (_level)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L221"
                return stdgo._internal.crypto.tls.Tls__quicerror._quicError((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: handshake data received at wrong level" : stdgo.GoString))));
            };
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readbuf = _data;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L224"
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._signalc.__get__();
            var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc.__smartGet__(), __3 = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L226"
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L228"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L231"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L233"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.write((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readbuf);
            (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L235"
            while ((((@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.len() >= (4 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr == null) : Bool)) {
                var _b = (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hand.bytes();
                var _n = @:assignType ((((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_b[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L238"
                if ((_n > (65536 : stdgo.GoInt) : Bool)) {
                    (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((65536 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L240"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L242"
                if (((_b.length) < ((4 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L243"
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
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L245"
                {
                    var _err = @:assignType ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._handlePostHandshakeMessage() : stdgo.Error);
                    if (_err != null) {
                        (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr = _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L249"
            if ((@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L250"
                {
                    final __ret__:stdgo.Error = stdgo._internal.crypto.tls.Tls__quicerror._quicError((@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L252"
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
    static public function close( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L206"
        if ((@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L207"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L209"
        (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancel();
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L210"
        for (_ in (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc) {};
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L213"
        return (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr;
    }
    @:keep
    @:tdfield
    static public function nextEvent( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>):stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        var _qs = (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L188"
        {
            var _last = @:assignType ((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent - (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_last >= (0 : stdgo.GoInt) : Bool) && (((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[(_last : stdgo.GoInt)].data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[(_last : stdgo.GoInt)].data[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L193"
        if (((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent >= ((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.length) : Bool)) {
            (@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events = ((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent>);
            (@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L196"
            return ({ kind : (0 : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent);
        };
        var _e = @:assignType ((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent);
        (@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._events[((@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent : stdgo.GoInt)] = (new stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent() : stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L200"
        (@:checkr _qs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextEvent++;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L201"
        return _e?.__copy__();
    }
    @:keep
    @:tdfield
    static public function start( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_quicconn.QUICConn> = _q;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L170"
        if ((@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._started) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L171"
            return stdgo._internal.crypto.tls.Tls__quicerror._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Start called more than once" : stdgo.GoString)));
        };
        (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._started = true;
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L174"
        if (((@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion < (772 : stdgo.GoUInt16) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L175"
            return stdgo._internal.crypto.tls.Tls__quicerror._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Config MinVersion must be at least TLS 1.13" : stdgo.GoString)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L177"
        {
            final __tmp__0 = _ctx;
            stdgo.Go.routine(() -> (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.handshakeContext(__tmp__0));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L178"
        {
            var __tmp__ = (@:checkr (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._quic ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockedc.__smartGet__(), __3 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L179"
                return (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handshakeErr;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/quic.go#L181"
        return (null : stdgo.Error);
    }
}
