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
function _dial(_ctx:stdgo._internal.context.Context_context.Context, _netDialer:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _network:stdgo.GoString, _addr:stdgo.GoString, _config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L121"
            if ((@:checkr _netDialer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, (@:checkr _netDialer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L127"
            if (!(@:checkr _netDialer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline.isZero()) {
                var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withdeadline.withDeadline(_ctx, (@:checkr _netDialer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline?.__copy__());
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            var __tmp__ = _netDialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _rawConn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L134"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L135"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _colonPos = @:assignType (stdgo._internal.strings.Strings_lastindex.lastIndex(_addr?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L139"
            if (_colonPos == ((-1 : stdgo.GoInt))) {
                _colonPos = (_addr.length);
            };
            var _hostname = @:assignType ((_addr.__slice__(0, _colonPos) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L144"
            if (({
                final value = _config;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _config = stdgo._internal.crypto.tls.Tls__defaultconfig._defaultConfig();
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L149"
            if ((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName == ((stdgo.Go.str() : stdgo.GoString))) {
                var _c = _config.clone();
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName = _hostname?.__copy__();
                _config = _c;
            };
            var _conn = stdgo._internal.crypto.tls.Tls_client.client(_rawConn, _config);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L157"
            {
                var _err = @:assignType (_conn.handshakeContext(_ctx) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L158"
                    _rawConn.close();
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L159"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/tls.go#L161"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } = { _0 : _conn, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : (null : stdgo.Error) };
            };
        };
    }
