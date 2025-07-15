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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_lruSessionCache_asInterface) class T_lruSessionCache_static_extension {
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1505"
            _c.lock();
            {
                final __f__ = _c.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1508"
            {
                var __tmp__ = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_sessionKey?.__copy__()) ? { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1509"
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.moveToFront(_elem);
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1510"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } = { _0 : (@:checkr (stdgo.Go.typeAssert((@:checkr _elem ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state, _1 : true };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1512"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>; var _1 : Bool; } = { _0 : null, _1 : false };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>), _1 : false };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>), _1 : false };
            };
        };
    }
    @:keep
    @:tdfield
    static public function put( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache>, _sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clientsessionstate.ClientSessionState>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1472"
            _c.lock();
            {
                final __f__ = _c.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1475"
            {
                var __tmp__ = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_sessionKey?.__copy__()) ? { _0 : (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_sessionKey?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), _elem:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1476"
                    if (({
                        final value = _cs;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1477"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.remove(_elem);
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1478"
                        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__remove__(_sessionKey);
                    } else {
                        var _entry = (stdgo.Go.typeAssert((@:checkr _elem ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
                        (@:checkr _entry ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _cs;
                        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1482"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.moveToFront(_elem);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1484"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1487"
            if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.len() < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capacity : Bool)) {
                var _entry = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry(_sessionKey?.__copy__(), _cs) : stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_sessionKey] = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.pushFront(new stdgo.AnyInterface(stdgo.Go.asInterface(_entry, _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry }))));
                //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1490"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _elem = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.back();
            var _entry = (stdgo.Go.typeAssert((@:checkr _elem ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_lrusessioncacheentrydott_lrusessioncacheentry.__type__stdgodot_internaldotcryptodottlsdotTls_t_lrusessioncacheentrydotT_lruSessionCacheEntry })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_lrusessioncacheentry.T_lruSessionCacheEntry>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1495"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null) (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__remove__((@:checkr _entry ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionKey);
            (@:checkr _entry ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sessionKey = _sessionKey?.__copy__();
            (@:checkr _entry ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _cs;
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/common.go#L1498"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q.moveToFront(_elem);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_sessionKey] = _elem;
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
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.crypto.tls.Tls_t_lrusessioncache.T_lruSessionCache):Void return @:_5 __self__.lock();
}
