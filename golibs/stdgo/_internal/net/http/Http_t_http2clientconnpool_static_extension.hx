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
@:keep class T_http2ClientConnPool_static_extension {
    @:interfacetypeffun
    static public function markDead(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void t.markDead(_0);
    @:interfacetypeffun
    static public function getClientConn(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return t.getClientConn(_req, _addr);
}
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnPool_asInterface) class T_http2clientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function _closeIdleConnections( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L970"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L978"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns != null) for (__12 => _vv in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L979"
                if (_vv != null) for (__13 => _cc in _vv) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L980"
                    _cc._closeIfIdle();
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
    static public function markDead( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L952"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L954"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__12 => _key in ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>), _1 : false }), _vv:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L956"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L957"
                    continue;
                };
                var _newList = stdgo._internal.net.http.Http__http2filteroutclientconn._http2filterOutClientConn(_vv, _cc);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L960"
                if (((_newList.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] = _newList;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L963"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns.__remove__(_key);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L966"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys.__remove__(_cc);
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
    static public function _addConnLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L936"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>)) != null) for (__12 => _v in ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L937"
            if (_v == (_cc)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L938"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L941"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L944"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] = (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>)).__append__(_cc) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[_cc] = (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[_cc] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_key?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function _addConnIfNeeded( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        var _used = false, _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L883"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L884"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>)) != null) for (__12 => _cc in ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L885"
            if (_cc.canTakeNewRequest()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L886"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L887"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                    _used = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall> = __tmp__._0, _dup:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L891"
        if (!_dup) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L892"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls == null) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>>);
            };
            _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>) } : stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2addconncalldott_http2addconncall.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2addconncalldotT_http2addConnCall })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls[_key] = _call;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L900"
            {
                final __tmp__0 = _t;
final __tmp__1 = _key?.__copy__();
final __tmp__2 = _c;
                stdgo.Go.routine(() -> _call._run(__tmp__0, __tmp__1, __tmp__2));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L902"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L904"
        (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__get__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L905"
        if ((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L906"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _used = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L908"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : !_dup, _1 : (null : stdgo.Error) };
            _used = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _getStartDialLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L846"
        {
            var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing.__exists__(_addr?.__copy__()) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing[_addr?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>), _1 : false }), _call:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L848"
                return _call;
            };
        };
        var _call = (stdgo.Go.setRef(({ _p : _p, _done : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _ctx : _ctx } : stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dialcalldott_http2dialcall.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dialcalldotT_http2dialCall })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L851"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>>);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing[_addr] = _call;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L855"
        {
            final __tmp__0 = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx;
final __tmp__1 = _addr?.__copy__();
            stdgo.Go.routine(() -> _call._dial(__tmp__0, __tmp__1));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L856"
        return _call;
    }
    @:keep
    @:tdfield
    static public function _getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L786"
        if ((stdgo._internal.net.http.Http__http2isconnectioncloserequest._http2isConnectionCloseRequest(_req) && _dialOnMiss : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L788"
            stdgo._internal.net.http.Http__http2tracegetconn._http2traceGetConn(_req, _addr?.__copy__());
            {};
            var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._dialClientConn(_req.context(), _addr?.__copy__(), true), _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L791"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L792"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L794"
            return { _0 : _cc, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L796"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L797"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L798"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_addr] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>)) != null) for (__12 => _cc in ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conns[_addr] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L799"
                if (_cc.reserveNewRequest()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L803"
                    if (!(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._getConnCalled) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L804"
                        stdgo._internal.net.http.Http__http2tracegetconn._http2traceGetConn(_req, _addr?.__copy__());
                    };
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._getConnCalled = false;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L807"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L808"
                    return { _0 : _cc, _1 : (null : stdgo.Error) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L811"
            if (!_dialOnMiss) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L812"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L813"
                return { _0 : null, _1 : stdgo._internal.net.http.Http__http2errnocachedconn._http2ErrNoCachedConn };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L815"
            stdgo._internal.net.http.Http__http2tracegetconn._http2traceGetConn(_req, _addr?.__copy__());
            var _call = _p._getStartDialLocked(_req.context(), _addr?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L817"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L818"
            (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__get__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L819"
            if (stdgo._internal.net.http.Http__http2shouldretrydial._http2shouldRetryDial(_call, _req)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L820"
                continue;
            };
            var __0 = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res, __1 = @:assignType ((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err : stdgo.Error);
var _err = __1, _cc = __0;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L823"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L824"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L826"
            if (_cc.reserveNewRequest()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L827"
                return { _0 : _cc, _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L776"
        return _p._getClientConn(_req, _addr?.__copy__(), true);
    }
}
