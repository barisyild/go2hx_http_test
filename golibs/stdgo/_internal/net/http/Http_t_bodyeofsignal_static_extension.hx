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
@:keep @:allow(stdgo._internal.net.http.Http.T_bodyEOFSignal_asInterface) class T_bodyEOFSignal_static_extension {
    @:keep
    @:tdfield
    static public function _condfn( _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>, _err:stdgo.Error):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal> = _es;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2838"
        if ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fn == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2839"
            return _err;
        };
        _err = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fn(_err);
        (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fn = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2843"
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>):stdgo.Error {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2823"
            (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2825"
            if ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2826"
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
            (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2829"
            if ((((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyCloseFn != null) && (({
                final __t__ = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2830"
                {
                    final __ret__:stdgo.Error = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyCloseFn();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _err = @:assignType ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.close() : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2833"
            {
                final __ret__:stdgo.Error = _es._condfn(_err);
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
    static public function read( _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _es:stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal> = _es;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2800"
            (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var __0 = @:assignType ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed : Bool), __1 = @:assignType ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr : stdgo.Error);
var _rerr = __1, _closed = __0;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2802"
            (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2803"
            if (_closed) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2804"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__errreadonclosedresbody._errReadOnClosedResBody };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2806"
            if (_rerr != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2807"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _rerr };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            {
                var __tmp__ = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2811"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2812"
                (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                {
                    final __f__ = (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2814"
                if ((@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr == null) {
                    (@:checkr _es ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr = _err;
                };
                _err = _es._condfn(_err);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2819"
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
