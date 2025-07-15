package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
@:keep @:allow(stdgo._internal.net.http.Http.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function _onceSetNextProtoDefaults( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3319"
        if (stdgo._internal.net.http.Http__omitbundledhttp2._omitBundledHTTP2) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3320"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3322"
        if (stdgo._internal.net.http.Http__http2server._http2server.value() == (("0" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3323"
            stdgo._internal.net.http.Http__http2server._http2server.incNonDefault();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3324"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3328"
        if ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto == null) {
            var _conf = (stdgo.Go.setRef(({ newWriteScheduler : function():stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3330"
                return stdgo._internal.net.http.Http__http2newprioritywritescheduler._http2NewPriorityWriteScheduler(null);
            } } : stdgo._internal.net.http.Http_t_http2server.T_http2Server), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverdott_http2server.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverdotT_http2Server })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>);
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoErr = stdgo._internal.net.http.Http__http2configureserver._http2ConfigureServer(_srv, _conf);
        };
    }
    @:keep
    @:tdfield
    static public function _onceSetNextProtoDefaults_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3308"
        if (_srv._shouldConfigureHTTP2ForServe()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3309"
            _srv._onceSetNextProtoDefaults();
        };
    }
    @:keep
    @:tdfield
    static public function _setupHTTP2_Serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3303"
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoOnce.do_(_srv._onceSetNextProtoDefaults_Serve);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3304"
        return (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoErr;
    }
    @:keep
    @:tdfield
    static public function _setupHTTP2_ServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3290"
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoOnce.do_(_srv._onceSetNextProtoDefaults);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3291"
        return (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoErr;
    }
    @:keep
    @:tdfield
    static public function listenAndServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3268"
            if (_srv._shuttingDown()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3269"
                return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
            };
            var _addr = @:assignType ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3272"
            if (_addr == ((stdgo.Go.str() : stdgo.GoString))) {
                _addr = (":https" : stdgo.GoString);
            };
            var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3277"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3278"
                return _err;
            };
            {
                final __f__ = _ln.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3283"
            {
                final __ret__:stdgo.Error = _srv.serveTLS(_ln, _certFile?.__copy__(), _keyFile?.__copy__());
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
    static public function _logf( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3211"
        if (({
            final value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errorLog;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3212"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errorLog.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3214"
            stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function setKeepAlivesEnabled( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _v:Bool):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3198"
        if (_v) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3199"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disableKeepAlives.store(false);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3200"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3202"
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disableKeepAlives.store(true);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3205"
        _srv._closeIdleConns();
    }
    @:keep
    @:tdfield
    static public function _shuttingDown( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3190"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inShutdown.load();
    }
    @:keep
    @:tdfield
    static public function _doKeepAlives( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3186"
        return (!(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._disableKeepAlives.load() && !_s._shuttingDown() : Bool);
    }
    @:keep
    @:tdfield
    static public function _readHeaderTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3179"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readHeaderTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3180"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readHeaderTimeout;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3182"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout;
    }
    @:keep
    @:tdfield
    static public function _idleTimeout( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3172"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3173"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3175"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout;
    }
    @:keep
    @:tdfield
    static public function _trackConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, _add:Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3159"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3161"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn == null) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3164"
            if (_add) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn[_c] = ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3167"
                if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn != null) (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn.__remove__(_c);
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
    static public function _trackListener( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _ln:stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, _add:Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3140"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3142"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners == null) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3145"
            if (_add) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3146"
                if (_s._shuttingDown()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3147"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
                    };
                };
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners[_ln] = ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3150"
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listenerGroup.add((1 : stdgo.GoInt));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3152"
                if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners != null) (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners.__remove__(_ln);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3153"
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listenerGroup.done();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3155"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function serveTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3106"
        {
            var _err = @:assignType (_srv._setupHTTP2_ServeTLS() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3107"
                return _err;
            };
        };
        var _config = stdgo._internal.net.http.Http__clonetlsconfig._cloneTLSConfig((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3111"
        if (!stdgo._internal.net.http.Http__strslicecontains._strSliceContains((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("http/1.1" : stdgo.GoString))) {
            (@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos.__append__(("http/1.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        var _configHasCert = @:assignType ((((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getCertificate != null) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3116"
        if (((!_configHasCert || _certFile != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_keyFile != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            (@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate)]) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
            {
                var __tmp__ = stdgo._internal.crypto.tls.Tls_loadx509keypair.loadX509KeyPair(_certFile?.__copy__(), _keyFile?.__copy__());
                (@:checkr _config ?? throw stdgo.Error._nullPointerDereference.__underlying__()).certificates[(0 : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3120"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3121"
                return _err;
            };
        };
        var _tlsListener = @:assignType (stdgo._internal.crypto.tls.Tls_newlistener.newListener(_l, _config) : stdgo._internal.net.Net_listener.Listener);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3126"
        return _srv.serve(_tlsListener);
    }
    @:keep
    @:tdfield
    static public function serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3027"
            {
                var _fn = stdgo._internal.net.http.Http__testhookserverserve._testHookServerServe;
                if (_fn != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3028"
                    _fn(_srv, _l);
                };
            };
            var _origListener = @:assignType (_l : stdgo._internal.net.Net_listener.Listener);
            _l = stdgo.Go.asInterface((stdgo.Go.setRef(({ listener : _l } : stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_oncecloselistenerdott_oncecloselistener.__type__stdgodot_internaldotnetdothttpdotHttp_t_oncecloselistenerdotT_onceCloseListener })) : stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_oncecloselistenerdott_oncecloselistener.__type__stdgodot_internaldotnetdothttpdotHttp_t_oncecloselistenerdotT_onceCloseListener }));
            {
                final __f__ = _l.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3035"
            {
                var _err = @:assignType (_srv._setupHTTP2_Serve() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3036"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3039"
            if (!_srv._trackListener((stdgo.Go.setRef(_l, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenerdotlistener.__type__stdgodot_internaldotnetdotNet_listenerdotListener })) : stdgo.Ref<stdgo._internal.net.Net_listener.Listener>), true)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3040"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
                };
            };
            {
                var _a0 = (stdgo.Go.setRef(_l, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenerdotlistener.__type__stdgodot_internaldotnetdotNet_listenerdotListener })) : stdgo.Ref<stdgo._internal.net.Net_listener.Listener>);
                var _a1 = false;
                final __f__ = _srv._trackListener;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1) });
            };
            var _baseCtx = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3045"
            if ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseContext != null) {
                _baseCtx = (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseContext(_origListener);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3047"
                if (_baseCtx == null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3048"
                    throw new stdgo.AnyInterface(("BaseContext returned a nil context" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            var _tempDelay:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
            var _ctx = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_baseCtx, new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_servercontextkey.serverContextKey, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_srv, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer })))) : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3055"
            while (true) {
                var __tmp__ = _l.accept(), _rw:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3057"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3058"
                    if (_srv._shuttingDown()) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3059"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3061"
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
                        }, _ne = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && _ne.temporary() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3062"
                            if (_tempDelay == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                                _tempDelay = (5000000i64 : stdgo._internal.time.Time_duration.Duration);
                            } else {
                                _tempDelay = (_tempDelay * ((2i64 : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3067"
                            {
                                var _max = @:assignType (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
                                if ((_tempDelay > _max : Bool)) {
                                    _tempDelay = _max;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3070"
                            _srv._logf(("http: Accept error: %v; retrying in %v" : stdgo.GoString), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), new stdgo.AnyInterface(stdgo.Go.asInterface(_tempDelay, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3071"
                            stdgo._internal.time.Time_sleep.sleep(_tempDelay);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3072"
                            continue;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3074"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                var _connCtx = @:assignType (_ctx : stdgo._internal.context.Context_context.Context);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3077"
                {
                    var _cc = @:assignType ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connContext : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context);
                    if (_cc != null) {
                        _connCtx = _cc(_connCtx, _rw);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3079"
                        if (_connCtx == null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3080"
                            throw new stdgo.AnyInterface(("ConnContext returned nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                    };
                };
                _tempDelay = (0i64 : stdgo._internal.time.Time_duration.Duration);
                var _c = _srv._newConn(_rw);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3085"
                _c._setState((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (0 : stdgo._internal.net.http.Http_connstate.ConnState), true);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3086"
                {
                    final __tmp__0 = _connCtx;
                    stdgo.Go.routine(() -> _c._serve(__tmp__0));
                };
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
    static public function _shouldConfigureHTTP2ForServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Bool {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2993"
        if (({
            final value = (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3000"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3009"
        return stdgo._internal.net.http.Http__strslicecontains._strSliceContains((@:checkr (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("h2" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function listenAndServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2974"
        if (_srv._shuttingDown()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2975"
            return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
        };
        var _addr = @:assignType ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2978"
        if (_addr == ((stdgo.Go.str() : stdgo.GoString))) {
            _addr = (":http" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.Net_listen.listen(("tcp" : stdgo.GoString), _addr?.__copy__()), _ln:stdgo._internal.net.Net_listener.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2982"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2983"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2985"
        return _srv.serve(_ln);
    }
    @:keep
    @:tdfield
    static public function _closeListenersLocked( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2863"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners != null) for (_ln => _ in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listeners) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2864"
            {
                var _cerr = @:assignType ((_ln : stdgo._internal.net.Net_listener.Listener).close() : stdgo.Error);
                if (((_cerr != null) && (_err == null) : Bool)) {
                    _err = _cerr;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2868"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closeIdleConns( _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2838"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _quiescent = @:assignType (true : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2841"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn != null) for (_c => _ in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn) {
                var __tmp__ = _c._getState(), _st:stdgo._internal.net.http.Http_connstate.ConnState = __tmp__._0, _unixSec:stdgo.GoInt64 = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2846"
                if (((_st == (0 : stdgo._internal.net.http.Http_connstate.ConnState)) && (_unixSec < (stdgo._internal.time.Time_now.now().unix() - (5i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool) : Bool)) {
                    _st = (2 : stdgo._internal.net.http.Http_connstate.ConnState);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2849"
                if (((_st != (2 : stdgo._internal.net.http.Http_connstate.ConnState)) || (_unixSec == (0i64 : stdgo.GoInt64)) : Bool)) {
                    _quiescent = false;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2853"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2855"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2856"
                if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn != null) (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn.__remove__(_c);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2858"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _quiescent;
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function registerOnShutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _f:() -> Void):Void {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2830"
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onShutdown = ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onShutdown.__append__(_f) : stdgo.Slice<() -> Void>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2832"
        (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function shutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2787"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inShutdown.store(true);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2789"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _lnerr = @:assignType (_srv._closeListenersLocked() : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2791"
            if ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onShutdown != null) for (__12 => _f in (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onShutdown) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2792"
                {
                    {};
                    stdgo.Go.routine(() -> _f());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2794"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2795"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listenerGroup.wait_();
            var _pollIntervalBase = @:assignType (1000000i64 : stdgo._internal.time.Time_duration.Duration);
            var _nextPollInterval = @:assignType (function():stdgo._internal.time.Time_duration.Duration {
                var _interval = @:assignType (_pollIntervalBase + (stdgo._internal.math.rand.Rand_intn.intn(((_pollIntervalBase / (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : stdgo.GoInt)) : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                _pollIntervalBase = (_pollIntervalBase * ((2i64 : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2803"
                if ((_pollIntervalBase > (500000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    _pollIntervalBase = (500000000i64 : stdgo._internal.time.Time_duration.Duration);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2806"
                return _interval;
            } : () -> stdgo._internal.time.Time_duration.Duration);
            var _timer = stdgo._internal.time.Time_newtimer.newTimer(_nextPollInterval());
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2811"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2812"
                if (_srv._closeIdleConns()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2813"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _lnerr;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2815"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2817"
                                    {
                                        final __ret__:stdgo.Error = _ctx.err();
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2819"
                                    _timer.reset(_nextPollInterval());
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
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
    static public function close( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2737"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inShutdown.store(true);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2738"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _err = @:assignType (_srv._closeListenersLocked() : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2746"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2747"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listenerGroup.wait_();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2748"
            (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2750"
            if ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn != null) for (_c => _ in (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2751"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2752"
                if ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn != null) (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConn.__remove__(_c);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2754"
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
    static public function _tlsHandshakeTimeout( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var _ret:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L886"
        for (__12 => _v in (new stdgo.GoArray<stdgo._internal.time.Time_duration.Duration>(3, 3, ...[(@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readHeaderTimeout, (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout, (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeTimeout]).__setNumber64__() : stdgo.GoArray<stdgo._internal.time.Time_duration.Duration>).__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L891"
            if ((_v <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L892"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L894"
            if (((_ret == (0i64 : stdgo._internal.time.Time_duration.Duration)) || (_v < _ret : Bool) : Bool)) {
                _ret = _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L898"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _initialReadLimitSize( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.GoInt64 {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L876"
        return ((_srv._maxHeaderBytes() : stdgo.GoInt64) + (4096i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _maxHeaderBytes( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.GoInt {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L869"
        if (((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderBytes > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L870"
            return (@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderBytes;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L872"
        return (1048576 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _newConn( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _rwc:stdgo._internal.net.Net_conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> {
        @:recv var _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = _srv;
        var _c = (stdgo.Go.setRef(({ _server : _srv, _rwc : _rwc } : stdgo._internal.net.http.Http_t_conn.T_conn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_conndott_conn.__type__stdgodot_internaldotnetdothttpdotHttp_t_conndotT_conn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L629"
        if (false) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc = stdgo._internal.net.http.Http__newloggingconn._newLoggingConn(("server" : stdgo.GoString), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L632"
        return _c;
    }
}
