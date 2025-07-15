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
@:keep @:allow(stdgo._internal.net.http.Http.ServeMux_asInterface) class ServeMux_static_extension {
    @:keep
    @:tdfield
    static public function handleFunc( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2564"
        if (_handler == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2565"
            throw new stdgo.AnyInterface(("http: nil handler" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2567"
        _mux.handle(_pattern?.__copy__(), stdgo.Go.asInterface((_handler : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerfuncdothandlerfunc.__type__stdgodot_internaldotnetdothttpdotHttp_handlerfuncdotHandlerFunc));
    }
    @:keep
    @:tdfield
    static public function handle( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_handler.Handler):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2520"
            (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2523"
            if (_pattern == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2524"
                throw new stdgo.AnyInterface(("http: invalid pattern" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2526"
            if (_handler == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2527"
                throw new stdgo.AnyInterface(("http: nil handler" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2529"
            {
                var __tmp__ = ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_pattern?.__copy__()) ? { _0 : (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_pattern?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry), _1 : false }), __12:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2530"
                    throw new stdgo.AnyInterface((("http: multiple registrations for " : stdgo.GoString) + _pattern?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2533"
            if ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == null) {
                (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>();
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
            };
            var _e = @:assignType ({ _h : _handler, _pattern : _pattern?.__copy__() } : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry);
            (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_pattern] = _e?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2538"
            if (_pattern[((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._es = stdgo._internal.net.http.Http__appendsorted._appendSorted((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._es, _e?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2542"
            if (_pattern[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
                (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hosts = true;
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
    static public function serveHTTP( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2506"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestURI == (("*" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2507"
            if (_r.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2508"
                _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2510"
            _w.writeHeader((400 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2511"
            return;
        };
        var __tmp__ = _mux.handler(_r), _h:stdgo._internal.net.http.Http_handler.Handler = __tmp__._0, __12:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2514"
        _h.serveHTTP(_w, _r);
    }
    @:keep
    @:tdfield
    static public function _handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _h = (null : stdgo._internal.net.http.Http_handler.Handler), _pattern = ("" : stdgo.GoString);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2487"
            (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.rLock();
            {
                final __f__ = (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2491"
            if ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hosts) {
                {
                    var __tmp__ = _mux._match((_host + _path?.__copy__() : stdgo.GoString)?.__copy__());
                    _h = @:tmpset0 __tmp__._0;
                    _pattern = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2494"
            if (_h == null) {
                {
                    var __tmp__ = _mux._match(_path?.__copy__());
                    _h = @:tmpset0 __tmp__._0;
                    _pattern = @:tmpset0 __tmp__._1?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2497"
            if (_h == null) {
                {
                    final __tmp__0 = stdgo._internal.net.http.Http_notfoundhandler.notFoundHandler();
                    final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    _h = @:binopAssign __tmp__0;
                    _pattern = @:binopAssign __tmp__1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2500"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _h, _1 : _pattern };
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
                return { _0 : _h, _1 : _pattern };
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
                return { _0 : _h, _1 : _pattern };
            };
        };
    }
    @:keep
    @:tdfield
    static public function handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_handler.Handler), _pattern = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2453"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("CONNECT" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2457"
            {
                var __tmp__ = _mux._redirectToPathSlash((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__(), (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__(), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2458"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() };
                        _h = __tmp__._0;
                        _pattern = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2461"
            return _mux._handler((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__(), (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__());
        };
        var _host = @:assignType (stdgo._internal.net.http.Http__striphostport._stripHostPort((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__())?.__copy__() : stdgo.GoString);
        var _path = @:assignType (stdgo._internal.net.http.Http__cleanpath._cleanPath((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2471"
        {
            var __tmp__ = _mux._redirectToPathSlash(_host?.__copy__(), _path?.__copy__(), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2472"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() };
                    _h = __tmp__._0;
                    _pattern = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2475"
        if (_path != ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path)) {
            {
                var __tmp__ = _mux._handler(_host?.__copy__(), _path?.__copy__());
                _pattern = @:tmpset0 __tmp__._1?.__copy__();
            };
            var _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__() } : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2478"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.Http_redirecthandler.redirectHandler((_u.string() : stdgo.GoString)?.__copy__(), (301 : stdgo.GoInt)), _1 : _pattern?.__copy__() };
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2481"
        return _mux._handler(_host?.__copy__(), (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _shouldRedirectRLocked( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var _p = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_path?.__copy__(), (_host + _path?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2416"
        if (_p != null) for (__12 => _c in _p) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2417"
            {
                var __tmp__ = ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_c?.__copy__()) ? { _0 : (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_c?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry), _1 : false }), __13:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2418"
                    return false;
                };
            };
        };
        var _n = @:assignType (_path.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2423"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2424"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2426"
        if (_p != null) for (__13 => _c in _p) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2427"
            {
                var __tmp__ = ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__((_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) ? { _0 : (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[(_c + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry), _1 : false }), __14:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry = __tmp__._0, _exist:Bool = __tmp__._1;
                if (_exist) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2428"
                    return _path[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((47 : stdgo.GoUInt8));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2432"
        return false;
    }
    @:keep
    @:tdfield
    static public function _redirectToPathSlash( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _host:stdgo.GoString, _path:stdgo.GoString, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : Bool; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2399"
        (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.rLock();
        var _shouldRedirect = @:assignType (_mux._shouldRedirectRLocked(_host?.__copy__(), _path?.__copy__()) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2401"
        (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.rUnlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2402"
        if (!_shouldRedirect) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2403"
            return { _0 : _u, _1 : false };
        };
        _path = (_path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _u = (stdgo.Go.setRef(({ path : _path?.__copy__(), rawQuery : (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__() } : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2407"
        return { _0 : _u, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _match( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _path:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } {
        @:recv var _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> = _mux;
        var _h = (null : stdgo._internal.net.http.Http_handler.Handler), _pattern = ("" : stdgo.GoString);
        var __tmp__ = ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m != null && (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m.__exists__(_path?.__copy__()) ? { _0 : (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m[_path?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry), _1 : false }), _v:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2380"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2381"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : _v._h, _1 : _v._pattern?.__copy__() };
                _h = __tmp__._0;
                _pattern = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2386"
        if ((@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._es != null) for (__12 => _e in (@:checkr _mux ?? throw stdgo.Error._nullPointerDereference.__underlying__())._es) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2387"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), _e._pattern?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2388"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : _e._h, _1 : _e._pattern?.__copy__() };
                    _h = __tmp__._0;
                    _pattern = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2391"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } = { _0 : (null : stdgo._internal.net.http.Http_handler.Handler), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _h = __tmp__._0;
            _pattern = __tmp__._1;
            __tmp__;
        };
    }
}
