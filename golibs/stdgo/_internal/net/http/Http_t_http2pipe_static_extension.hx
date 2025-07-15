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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2pipe_asInterface) class T_http2pipe_static_extension {
    @:keep
    @:tdfield
    static public function done( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3854"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3856"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec == null) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3858"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3860"
                    _p._closeDoneLocked();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3863"
            {
                final __ret__:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec;
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
                return (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
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
                return (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function err( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3843"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3845"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3846"
                {
                    final __ret__:stdgo.Error = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3848"
            {
                final __ret__:stdgo.Error = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
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
    static public function _closeDoneLocked( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3829"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3830"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3834"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3837"
                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec.__close__();
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
    }
    @:keep
    @:tdfield
    static public function _closeWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _dst:stdgo.Ref<stdgo.Error>, _err:stdgo.Error, _fn:() -> Void):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3803"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3804"
                throw new stdgo.AnyInterface(("err must be non-nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3806"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3808"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l == null) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }));
            };
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.signal;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3812"
            if ((_dst : stdgo.Error) != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3814"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFn = _fn;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3817"
            if (({
                final __t__ = _dst;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Ref<stdgo.Error>);
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3818"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b != null) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread + ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.len()) : stdgo.GoInt);
                };
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = (null : stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer);
            };
            {
                var __tmp__ = _err;
                var x = (_dst : stdgo.Error);
                x.error = __tmp__.error;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3824"
            _p._closeDoneLocked();
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
    static public function _closeWithErrorAndCode( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _err:stdgo.Error, _fn:() -> Void):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3800"
        _p._closeWithError((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Ref<stdgo.Error>), _err, _fn);
    }
    @:keep
    @:tdfield
    static public function breakWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3796"
        _p._closeWithError((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    @:tdfield
    static public function closeWithError( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _err:stdgo.Error):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3791"
        _p._closeWithError((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Ref<stdgo.Error>), _err, null);
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3774"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3776"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l == null) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }));
            };
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.signal;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3780"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3781"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__http2errclosedpipewrite._http2errClosedPipeWrite };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _n = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3783"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.write(_d);
                _n = __ret__._0;
                _err = __ret__._1;
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
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3745"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3747"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l == null) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.l = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3750"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3751"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3752"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _n = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3754"
                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b != null) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.len() > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3755"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.read(_d);
                        _n = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3757"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3758"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFn != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3759"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFn();
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFn = null;
                    };
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = (null : stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3763"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _n = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3765"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._c.wait_();
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
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3734"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3736"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3737"
                {
                    final __ret__:stdgo.GoInt = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3739"
            {
                final __ret__:stdgo.GoInt = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.len();
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setBuffer( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, _b:stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3725"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3727"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._breakErr != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3728"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = _b;
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
}
