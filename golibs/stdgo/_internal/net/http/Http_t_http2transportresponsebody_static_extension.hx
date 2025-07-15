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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2transportResponseBody_asInterface) class T_http2transportResponseBody_static_extension {
    @:keep
    @:tdfield
    static public function close( _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody):stdgo.Error {
        @:recv var _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody = _b?.__copy__();
        var _cs = _b._cs;
        var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9672"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.breakWithError(stdgo._internal.net.http.Http__http2errclosedresponsebody._http2errClosedResponseBody);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9673"
        _cs._abortStream(stdgo._internal.net.http.Http__http2errclosedresponsebody._http2errClosedResponseBody);
        var _unread = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9676"
        if ((_unread > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9677"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _connAdd = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_unread) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9680"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9684"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9686"
            if ((_connAdd > (0 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9687"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_connAdd : stdgo.GoUInt32));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9689"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9690"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9693"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx.done();
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9699"
                            return (null : stdgo.Error);
                        };
                    };
                } else if ({
                    if (__c__2 == null) {
                        __c__2 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                    };
                    __c__2 != null && __c__2.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__2.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9701"
                            return stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
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
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9703"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody = _b?.__copy__();
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            var _cs = _b._cs;
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9618"
            if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9619"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = (@:checkr _b._cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9622"
            if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain != ((-1i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9623"
                if (((_n : stdgo.GoInt64) > (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain : Bool)) {
                    _n = ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9625"
                    if (_err == null) {
                        _err = stdgo._internal.errors.Errors_new_.new_(("net/http: server replied with more than declared Content-Length; truncated" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9627"
                        _cs._abortStream(_err);
                    };
                    (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr = _err;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9630"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain : stdgo.GoInt), _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain = ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9633"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readErr = _err;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9636"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9639"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9641"
                return { _0 : _n, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9644"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _connAdd = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_n) : stdgo.GoInt32);
            var _streamAdd:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9647"
            if (_err == null) {
                _streamAdd = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_n);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9650"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9652"
            if (((_connAdd != (0 : stdgo.GoInt32)) || (_streamAdd != (0 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9653"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                {
                    final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9655"
                if (_connAdd != ((0 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9656"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), stdgo._internal.net.http.Http__http2mustuint31._http2mustUint31(_connAdd));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9658"
                if (_streamAdd != ((0 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9659"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, stdgo._internal.net.http.Http__http2mustuint31._http2mustUint31(_streamAdd));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9661"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9663"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
