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
@:keep @:allow(stdgo._internal.net.http.Http.T_timeoutWriter_asInterface) class T_timeoutWriter_static_extension {
    @:keep
    @:tdfield
    static public function writeHeader( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _code:stdgo.GoInt):Void {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3484"
            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3486"
            _tw._writeHeaderLocked(_code);
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
    static public function _writeHeaderLocked( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _code:stdgo.GoInt):Void {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3467"
        stdgo._internal.net.http.Http__checkwriteheadercode._checkWriteHeaderCode(_code);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3469"
        if ((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3471"
            return;
        } else if ((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3473"
            if (({
                final value = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _caller = @:assignType (stdgo._internal.net.http.Http__relevantcaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_frame.Frame);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3475"
                stdgo._internal.net.http.Http__logf._logf((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req, ("http: superfluous response.WriteHeader call from %s (%s:%d)" : stdgo.GoString), new stdgo.AnyInterface(_caller.function_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_caller.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        } else {
            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader = true;
            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._code = _code;
        };
    }
    @:keep
    @:tdfield
    static public function write( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3455"
            (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3457"
            if ((@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3458"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3460"
            if (!(@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3461"
                _tw._writeHeaderLocked((200 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3463"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.write(_p);
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
    static public function header( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3452"
        return (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h;
    }
    @:keep
    @:tdfield
    static public function push( _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error {
        @:recv var _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter> = _tw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3446"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_pusherdotpusher.__type__stdgodot_internaldotnetdothttpdotHttp_pusherdotPusher) : stdgo._internal.net.http.Http_pusher.Pusher), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_pusher.Pusher), _1 : false };
            }, _pusher = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3447"
                return _pusher.push(_target?.__copy__(), _opts);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3449"
        return stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError }));
    }
}
