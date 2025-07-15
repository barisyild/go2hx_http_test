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
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConn_asInterface) class T_wantConn_static_extension {
    @:keep
    @:tdfield
    static public function _cancel( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>, _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _err:stdgo.Error):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1253"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1254"
        if ((({
            final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
            (value == null || (value : Dynamic).__nil__);
        }) && ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1255"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready != null) (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready.__close__();
        };
        var _pc = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc = null;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1260"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1262"
        if (({
            final value = _pc;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1263"
            _t._putOrCloseIdleConn(_pc);
        };
    }
    @:keep
    @:tdfield
    static public function _tryDeliver( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _err:stdgo.Error):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1234"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1237"
            if ((({
                final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) || ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1238"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc = _pc;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1243"
            if ((({
                final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
                (value == null || (value : Dynamic).__nil__);
            }) && ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1244"
                throw new stdgo.AnyInterface(("net/http: internal error: misuse of tryDeliver" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1246"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready != null) (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready.__close__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1247"
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
    static public function _waiting( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1224"
        {
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1226"
                                return false;
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1228"
                            return true;
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            return false;
        };
    }
}
