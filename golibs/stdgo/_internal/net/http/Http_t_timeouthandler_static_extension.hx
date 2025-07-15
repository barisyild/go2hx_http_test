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
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutHandler_asInterface) class T_timeoutHandler_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _ctx = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._testContext : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3378"
            if (_ctx == null) {
                var _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_r.context(), (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dt);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancelCtx = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancelCtx;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            _r = _r.withContext(_ctx);
            var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            var _tw = (stdgo.Go.setRef(({ _w : _w, _h : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), _req : _r } : stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_timeoutwriterdott_timeoutwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_timeoutwriterdotT_timeoutWriter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
            var _panicChan = (new stdgo.Chan<stdgo.AnyInterface>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3391"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3393"
                                    {
                                        var _p = @:assignType ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        if (({
                                            final value = _p;
                                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                        })) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3394"
                                            _panicChan.__send__(_p);
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3397"
                        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handler.serveHTTP(stdgo.Go.asInterface(_tw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_timeoutwriterdott_timeoutwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_timeoutwriterdotT_timeoutWriter })), _r);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3398"
                        if (_done != null) _done.__close__();
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
                };
                a();
            }));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3400"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _panicChan;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _p = __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3402"
                                throw ({
                                    final __t__ = _p;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                });
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _done;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3404"
                                (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                                {
                                    final __f__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                                var _dst = @:assignType (_w.header() : stdgo._internal.net.http.Http_header.Header);
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3407"
                                if ((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h != null) for (_k => _vv in (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h) {
                                    _dst[_k] = _vv;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3410"
                                if (!(@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
                                    (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code = (200 : stdgo.GoInt);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3413"
                                _w.writeHeader((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code);
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3414"
                                _w.write((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.bytes());
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = _ctx.done();
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3416"
                                (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                                {
                                    final __f__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3418"
                                {
                                    var _err = @:assignType (_ctx.err() : stdgo.Error);
                                    {
                                        final __value__ = _err;
                                        if (({
                                            final __t__ = __value__;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }) == (({
                                            final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }))) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3420"
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3421"
                                            stdgo._internal.io.Io_writestring.writeString(_w, _h._errorBody()?.__copy__());
                                            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout;
                                        } else {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3424"
                                            _w.writeHeader((503 : stdgo.GoInt));
                                            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
                                        };
                                    };
                                };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
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
    static public function _errorBody( _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler> = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3370"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3371"
            return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3373"
        return ("<html><head><title>Timeout</title></head><body><h1>Timeout</h1></body></html>" : stdgo.GoString);
    }
}
