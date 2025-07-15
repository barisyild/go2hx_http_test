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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ClientConn_asInterface) class T_http2ClientConn_static_extension {
    @:keep
    @:tdfield
    static public function _vlogf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10100"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._vlogf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _logf( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10096"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _writeStreamReset( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10084"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10085"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeRSTStream(_streamID, _code);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10086"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10087"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
    }
    @:keep
    @:tdfield
    static public function ping( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _c = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        var _p:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10008"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10009"
            {
                var __tmp__ = stdgo._internal.math.rand.Rand_read.read((_p.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10010"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10012"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10014"
            {
                var __tmp__ = ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings != null && (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings.__exists__(_p?.__copy__()) ? { _0 : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings[_p?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _1 : false }), __13:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings[_p] = _c;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10016"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10017"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10019"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        };
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10022"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10023"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                    {
                        final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10025"
                    {
                        var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writePing(false, _p?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10026"
                            _errc.__send__(_err);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10027"
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
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10029"
                    {
                        var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush() : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10030"
                            _errc.__send__(_err);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10031"
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
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10034"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _c;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10036"
                                return (null : stdgo.Error);
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _errc;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _err = __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10038"
                                return _err;
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
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10040"
                                return _ctx.err();
                            };
                        };
                    } else if ({
                        if (__c__3 == null) {
                            __c__3 = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerDone;
                        };
                        __c__3 != null && __c__3.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__3.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10043"
                                return (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerErr;
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
            };
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _countReadFrameError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _f = @:assignType ((@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError : stdgo.GoString -> Void);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9305"
        if (((_f == null) || (_err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9306"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9308"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : true };
            } catch(__exception__) {
                { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : false };
            }, _ce = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _errCode = @:assignType (_ce : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9310"
                _f(stdgo._internal.fmt.Fmt_sprintf.sprintf(("read_frame_conn_error_%s" : stdgo.GoString), new stdgo.AnyInterface(_errCode._stringToken(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9311"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9313"
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.Io_eof.eOF)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9314"
            _f(("read_frame_eof" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9315"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9317"
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9318"
            _f(("read_frame_unexpected_eof" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9319"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9321"
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.net.http.Http__http2errframetoolarge._http2ErrFrameTooLarge)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9322"
            _f(("read_frame_too_large" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9323"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9325"
        _f(("read_frame_other" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _readLoop( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _rl = (stdgo.Go.setRef(({ _cc : _cc } : stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnreadloopdott_http2clientconnreadloop.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnreadloopdotT_http2clientConnReadLoop })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>);
            {
                final __f__ = _rl._cleanup;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerErr = _rl._run();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9234"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerErr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : true };
                } catch(__exception__) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9235"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9236"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeGoAway((0u32 : stdgo.GoUInt32), (_ce : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9237"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
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
    static public function _forgetStreamID( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _id:stdgo.GoUInt32):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9196"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _slen = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9198"
            if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__remove__(_id);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9199"
            if (((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length) != ((_slen - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9200"
                throw new stdgo.AnyInterface(("forgetting unknown stream id" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9203"
            if ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length == (0 : stdgo.GoInt)) && ({
                final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9204"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.reset((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimeout);
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastIdle = stdgo._internal.time.Time_now.now()?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9209"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
            var _closeOnIdle = @:assignType ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._singleUse || (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse : Bool) || (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._disableKeepAlives() : Bool) || ({
                final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9212"
            if (((_closeOnIdle && (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9213"
                if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9214"
                    _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }))), new stdgo.AnyInterface((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._singleUse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
                };
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
                {
                    final __f__ = _cc._closeConn;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9220"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
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
    static public function _addStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9184"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add(((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialWindowSize : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9185"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._setConnFlow((stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9186"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._init((4194304 : stdgo.GoInt32));
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID;
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID = ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID + ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD] = _cs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9190"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9191"
            throw new stdgo.AnyInterface(("assigned stream ID 0" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _name:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9170"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9171"
            stdgo._internal.log.Log_printf.printf(("http2: Transport encoding header %q = %q" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9173"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._henc.writeField(({ name : _name?.__copy__(), value : _value?.__copy__() } : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField));
    }
    @:keep
    @:tdfield
    static public function _encodeTrailers( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _trailer:stdgo._internal.net.http.Http_header.Header):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9140"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hbuf.reset();
        var _hlSize = @:assignType ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9143"
        if (_trailer != null) for (_k => _vv in _trailer) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9144"
            if (_vv != null) for (__12 => _v in _vv) {
                var _hf = @:assignType ({ name : _k?.__copy__(), value : _v?.__copy__() } : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField);
                _hlSize = (_hlSize + ((_hf.size() : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9149"
        if ((_hlSize > (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderListSize : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9150"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errrequestheaderlistsize._http2errRequestHeaderListSize };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9153"
        if (_trailer != null) for (_k => _vv in _trailer) {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerheader._http2lowerHeader(_k?.__copy__()), _lowKey:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9155"
            if (!_ascii) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9158"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9162"
            if (_vv != null) for (__12 => _v in _vv) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9163"
                _cc._writeHeader(_lowKey?.__copy__(), _v?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9166"
        return { _0 : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _encodeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addGzipHeader:Bool, _trailers:stdgo.GoString, _contentLength:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8945"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hbuf.reset();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8946"
        if (({
            final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8947"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errnilrequesturl._http2errNilRequestURL };
        };
        var _host = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8951"
        if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
            _host = (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
        };
        var __tmp__ = _internal.golangdotorg.x.net.http.httpguts.Httpguts_punycodehostport.punycodeHostPort(_host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8955"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8956"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8958"
        if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validhostheader.validHostHeader(_host?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8959"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: invalid Host header" : stdgo.GoString)) };
        };
        var _path:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8963"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != (("CONNECT" : stdgo.GoString))) {
            _path = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL.requestURI()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8965"
            if (!stdgo._internal.net.http.Http__http2validpseudopath._http2validPseudoPath(_path?.__copy__())) {
                var _orig = @:assignType (_path?.__copy__() : stdgo.GoString);
                _path = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_path?.__copy__(), (((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8968"
                if (!stdgo._internal.net.http.Http__http2validpseudopath._http2validPseudoPath(_path?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8969"
                    if ((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8970"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q from URL.Opaque = %q" : stdgo.GoString), new stdgo.AnyInterface(_orig, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8972"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid request :path %q" : stdgo.GoString), new stdgo.AnyInterface(_orig, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8981"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_k => _vv in (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8982"
            if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_k?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8983"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header name %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8985"
            if (_vv != null) for (__12 => _v in _vv) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8986"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_v?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8988"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid HTTP header value for header %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                };
            };
        };
        var _enumerateHeaders = @:assignType (function(_f:(stdgo.GoString, stdgo.GoString) -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8999"
            _f((":authority" : stdgo.GoString), _host?.__copy__());
            var _m = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9001"
            if (_m == ((stdgo.Go.str() : stdgo.GoString))) {
                _m = ("GET" : stdgo.GoString);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9004"
            _f((":method" : stdgo.GoString), _m?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9005"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != (("CONNECT" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9006"
                _f((":path" : stdgo.GoString), _path?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9007"
                _f((":scheme" : stdgo.GoString), (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9009"
            if (_trailers != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9010"
                _f(("trailer" : stdgo.GoString), _trailers?.__copy__());
            };
            var _didUA:Bool = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9014"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_k => _vv in (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9015"
                if ((stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("host" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("content-length" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9018"
                    continue;
                } else if (((((stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("connection" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("proxy-connection" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("transfer-encoding" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("upgrade" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("keep-alive" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9028"
                    continue;
                } else if (stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("user-agent" : stdgo.GoString))) {
                    _didUA = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9035"
                    if (((_vv.length) < (1 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9036"
                        continue;
                    };
                    _vv = (_vv.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9039"
                    if (_vv[(0 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9040"
                        continue;
                    };
                } else if (stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("cookie" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9046"
                    if (_vv != null) for (__12 => _v in _vv) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9047"
                        while (true) {
                            var _p = @:assignType (stdgo._internal.strings.Strings_indexbyte.indexByte(_v?.__copy__(), (59 : stdgo.GoUInt8)) : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9049"
                            if ((_p < (0 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9050"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9052"
                            _f(("cookie" : stdgo.GoString), (_v.__slice__(0, _p) : stdgo.GoString)?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9053"
                            _p++;
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9055"
                            while ((((_p + (1 : stdgo.GoInt) : stdgo.GoInt) <= (_v.length) : Bool) && (_v[(_p : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9056"
                                _p++;
                            };
                            _v = (_v.__slice__(_p) : stdgo.GoString)?.__copy__();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9060"
                        if (((_v.length) > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9061"
                            _f(("cookie" : stdgo.GoString), _v?.__copy__());
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9064"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9067"
                if (_vv != null) for (__12 => _v in _vv) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9068"
                    _f(_k?.__copy__(), _v?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9071"
            if (stdgo._internal.net.http.Http__http2shouldsendreqcontentlength._http2shouldSendReqContentLength((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), _contentLength)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9072"
                _f(("content-length" : stdgo.GoString), stdgo._internal.strconv.Strconv_formatint.formatInt(_contentLength, (10 : stdgo.GoInt))?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9074"
            if (_addGzipHeader) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9075"
                _f(("accept-encoding" : stdgo.GoString), ("gzip" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9077"
            if (!_didUA) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9078"
                _f(("user-agent" : stdgo.GoString), ("Go-http-client/2.0" : stdgo.GoString));
            };
        } : ((stdgo.GoString, stdgo.GoString) -> Void) -> Void);
        var _hlSize = @:assignType ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9087"
        _enumerateHeaders(function(_name:stdgo.GoString, _value:stdgo.GoString):Void {
            var _hf = @:assignType ({ name : _name?.__copy__(), value : _value?.__copy__() } : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField);
            _hlSize = (_hlSize + ((_hf.size() : stdgo.GoUInt64)) : stdgo.GoUInt64);
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9092"
        if ((_hlSize > (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderListSize : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9093"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.net.http.Http__http2errrequestheaderlistsize._http2errRequestHeaderListSize };
        };
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_req.context());
        var _traceHeaders = @:assignType (stdgo._internal.net.http.Http__http2tracehaswroteheaderfield._http2traceHasWroteHeaderField(_trace) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9100"
        _enumerateHeaders(function(_name:stdgo.GoString, _value:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.net.http.Http__http2lowerheader._http2lowerHeader(_name?.__copy__()), _name:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9102"
            if (!_ascii) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9105"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9107"
            _cc._writeHeader(_name?.__copy__(), _value?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9108"
            if (_traceHeaders) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9109"
                stdgo._internal.net.http.Http__http2tracewroteheaderfield._http2traceWroteHeaderField(_trace, _name?.__copy__(), _value?.__copy__());
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9113"
        return { _0 : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hbuf.bytes(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeHeaders( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _streamID:stdgo.GoUInt32, _endStream:Bool, _maxFrameSize:stdgo.GoInt, _hdrs:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _first = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8709"
        while ((((_hdrs.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr == null) : Bool)) {
            var _chunk = _hdrs;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8711"
            if (((_chunk.length) > _maxFrameSize : Bool)) {
                _chunk = (_chunk.__slice__(0, _maxFrameSize) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _hdrs = (_hdrs.__slice__((_chunk.length)) : stdgo.Slice<stdgo.GoUInt8>);
            var _endHeaders = @:assignType ((_hdrs.length) == ((0 : stdgo.GoInt)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8716"
            if (_first) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8717"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeHeaders(({ streamID : _streamID, blockFragment : _chunk, endStream : _endStream, endHeaders : _endHeaders } : stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam));
                _first = false;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8725"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeContinuation(_streamID, _endHeaders, _chunk);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8728"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8729"
        return (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr;
    }
    @:keep
    @:tdfield
    static public function _awaitOpenSlotForStreamLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8686"
        while (true) {
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastActive = stdgo._internal.time.Time_now.now()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8688"
            if (((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed || !_cc._canTakeNewRequestLocked() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8689"
                return stdgo._internal.net.http.Http__http2errclientconnunusable._http2errClientConnUnusable;
            };
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastIdle = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8692"
            if ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length : stdgo.GoInt64) < ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxConcurrentStreams : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8693"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8695"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingRequests++;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8696"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.wait_();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8697"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingRequests--;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8698"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8700"
                                return (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr;
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTrip( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _ctx = @:assignType (_req.context() : stdgo._internal.context.Context_context.Context);
        var _cs = (stdgo.Go.setRef(({ _cc : _cc, _ctx : _ctx, _reqCancel : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel, _isHead : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("HEAD" : stdgo.GoString)), _reqBody : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _reqBodyContentLength : stdgo._internal.net.http.Http__http2actualcontentlength._http2actualContentLength(_req), _trace : stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx), _peerClosed : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _abort : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _respHeaderRecv : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _donec : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>) } : stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientstreamdott_http2clientstream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientstreamdotT_http2clientStream })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8316"
        {
            final __tmp__0 = _req;
            stdgo.Go.routine(() -> _cs._doRequest(__tmp__0));
        };
        var _waitDone = @:assignType (function():stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8319"
            {
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
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8321"
                                    return (null : stdgo.Error);
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _ctx.done();
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8323"
                                    return _ctx.err();
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
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8325"
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
                return (null : stdgo.Error);
            };
        } : () -> stdgo.Error);
        var _handleResponseHeaders = @:assignType (function():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
            var _res = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8331"
            if (((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode > (299 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8341"
                _cs._abortRequestBodyWrite();
            };
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request = _req;
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8345"
            if (((({
                final __t__ = (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = stdgo._internal.net.http.Http__http2nobody._http2noBody;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) && (stdgo._internal.net.http.Http__http2actualcontentlength._http2actualContentLength(_req) == (0i64 : stdgo.GoInt64)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8349"
                {
                    var _err = @:assignType (_waitDone() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8350"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8353"
            return { _0 : _res, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; });
        var _cancelRequest = function(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8357"
            (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _bodyClosed = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8359"
            (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8373"
            if (_bodyClosed != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8374"
                _bodyClosed.__get__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8376"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8379"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8380"
            {
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._respHeaderRecv;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8382"
                                    return _handleResponseHeaders();
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8384"
                                    {
                                        {
                                            var __select__ = true;
                                            var __c__0 = null;
                                            while (__select__) {
                                                if ({
                                                    if (__c__0 == null) {
                                                        __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._respHeaderRecv;
                                                    };
                                                    __c__0 != null && __c__0.__isGet__(true);
                                                }) {
                                                    __select__ = false;
                                                    {
                                                        __c__0.__get__();
                                                        {
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8390"
                                                            return _handleResponseHeaders();
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {
                                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8392"
                                                        _waitDone();
                                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8393"
                                                        return { _0 : null, _1 : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr };
                                                    };
                                                };
                                                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                            __c__0.__reset__();
                                        };
                                        return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
                                    };
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
                                    var _err = @:assignType (_ctx.err() : stdgo.Error);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8397"
                                    _cs._abortStream(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8398"
                                    return { _0 : null, _1 : _cancelRequest(_cs, _err) };
                                };
                            };
                        } else if ({
                            if (__c__3 == null) {
                                __c__3 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__3.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8400"
                                    _cs._abortStream(stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8401"
                                    return { _0 : null, _1 : _cancelRequest(_cs, stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled) };
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decrStreamReservationsLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8296"
        if (((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8297"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved--;
        };
    }
    @:keep
    @:tdfield
    static public function _decrStreamReservations( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8290"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8292"
            _cc._decrStreamReservationsLocked();
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
    static public function _responseHeaderTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8250"
        if (({
            final value = (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8251"
            return (@:checkr (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseHeaderTimeout;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8257"
        return (0i64 : stdgo._internal.time.Time_duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _closeForLostPing( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _err = @:assignType (stdgo._internal.errors.Errors_new_.new_(("http2: client connection lost" : stdgo.GoString)) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8222"
        {
            var _f = @:assignType ((@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError : stdgo.GoString -> Void);
            if (_f != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8223"
                _f(("conn_close_lost_ping" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8225"
        _cc._closeForError(_err);
    }
    @:keep
    @:tdfield
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _err = @:assignType (stdgo._internal.errors.Errors_new_.new_(("http2: client connection force closed via ClientConn.Close" : stdgo.GoString)) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8215"
        _cc._closeForError(_err);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8216"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _closeForError( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _err:stdgo.Error):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8200"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8202"
        if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (__12 => _cs in (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8203"
            _cs._abortStreamLocked(_err);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8205"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8206"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8207"
        _cc._closeConn();
    }
    @:keep
    @:tdfield
    static public function _sendGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8174"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _closing = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closing : Bool);
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closing = true;
            var _maxStreamID = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8178"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8179"
            if (_closing) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8181"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8184"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8187"
            {
                var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeGoAway(_maxStreamID, (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8188"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8190"
            {
                var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8191"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8194"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function shutdown( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8137"
        {
            var _err = @:assignType (_cc._sendGoAway() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8138"
                return _err;
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        var _cancelled = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8143"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8144"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                    {
                        final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8146"
                    while (true) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8147"
                        if ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length == (0 : stdgo.GoInt)) || (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed : Bool)) {
                            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8149"
                            if (_done != null) _done.__close__();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8150"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8152"
                        if (_cancelled) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8153"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8155"
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.wait_();
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
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8158"
        stdgo._internal.net.http.Http__http2shutdownenterwaitstatehook._http2shutdownEnterWaitStateHook();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8159"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _done;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8161"
                                _cc._closeConn();
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8162"
                                return (null : stdgo.Error);
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _ctx.done();
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8164"
                                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                                _cancelled = true;
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8167"
                                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8168"
                                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8169"
                                return _ctx.err();
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _isDoNotReuseAndIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8128"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8130"
            {
                final __ret__:Bool = ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse && ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length == (0 : stdgo.GoInt)) : Bool);
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
    static public function _closeIfIdle( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8111"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8112"
        if (((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8113"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8114"
            return;
        };
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
        var _nextID = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8119"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8121"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8122"
            _cc._vlogf(("http2: Transport closing idle conn %p (forSingleUse=%v, maxStream=%v)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }))), new stdgo.AnyInterface((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._singleUse, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface((_nextID - (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8124"
        _cc._closeConn();
    }
    @:keep
    @:tdfield
    static public function _forceCloseConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tconn;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : false };
        }, _tc = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8102"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8103"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8105"
        {
            var _nc = @:assignType (stdgo._internal.net.http.Http__http2tlsunderlyingconn._http2tlsUnderlyingConn(_tc) : stdgo._internal.net.Net_conn.Conn);
            if (_nc != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8106"
                _nc.close();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeConn( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _t = stdgo._internal.time.Time_afterfunc.afterFunc((250000000i64 : stdgo._internal.time.Time_duration.Duration), _cc._forceCloseConn);
            {
                final __f__ = _t.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8095"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tconn.close();
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
    static public function _onIdleTimeout( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8089"
        _cc._closeIfIdle();
    }
    @:keep
    @:tdfield
    static public function _tooIdleLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8079"
        return (((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration)) && !(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastIdle.isZero() : Bool) && (stdgo._internal.time.Time_since.since((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastIdle.round((0i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__()) > (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimeout : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _canTakeNewRequestLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _st = @:assignType (_cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8069"
        return _st._canTakeNewRequest;
    }
    @:keep
    @:tdfield
    static public function _idleStateLocked( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var _st = ({} : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8046"
        if (((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._singleUse && ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID > (1u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8047"
            return _st;
        };
        var _maxConcurrentOkay:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8050"
        if ((@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).strictMaxConcurrentStreams) {
            _maxConcurrentOkay = true;
        } else {
            _maxConcurrentOkay = ((((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length) + (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) <= ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxConcurrentStreams : stdgo.GoInt64) : Bool);
        };
        _st._canTakeNewRequest = ((((((({
            final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway;
            (value == null || (value : Dynamic).__nil__);
        }) && !(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed : Bool) && !(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closing : Bool) && _maxConcurrentOkay : Bool) && !(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse : Bool) && ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID : stdgo.GoInt64) + ((2i64 : stdgo.GoInt64) * ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingRequests : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt64) < (2147483647i64 : stdgo.GoInt64) : Bool) : Bool) && !_cc._tooIdleLocked() : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8064"
        return _st;
    }
    @:keep
    @:tdfield
    static public function _idleState( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8040"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8042"
            {
                final __ret__:stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState = _cc._idleStateLocked()?.__copy__();
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
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
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
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function state( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8013"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            var _maxConcurrent = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxConcurrentStreams : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8015"
            if (!(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seenSettings) {
                _maxConcurrent = (0u32 : stdgo.GoUInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8018"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8020"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8022"
            {
                final __ret__:stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState = ({ closed : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed, closing : ((((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closing || (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._singleUse : Bool) || (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse : Bool) || ({
                    final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool), streamsActive : ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length), streamsReserved : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved, streamsPending : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingRequests, lastIdle : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastIdle?.__copy__(), maxConcurrentStreams : _maxConcurrent } : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
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
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
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
                return ({} : stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState);
            };
        };
    }
    @:keep
    @:tdfield
    static public function reserveNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7969"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7971"
            {
                var _st = @:assignType (_cc._idleStateLocked()?.__copy__() : stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState);
                if (!_st._canTakeNewRequest) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7972"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7974"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamsReserved++;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7975"
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
    static public function canTakeNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7960"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7962"
            {
                final __ret__:Bool = _cc._canTakeNewRequestLocked();
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
    static public function _setGoAway( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7933"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _old = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway;
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway = _f;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7940"
            if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayDebug == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayDebug = (_f.debugData() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7943"
            if ((({
                final value = _old;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _old ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode != (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)) : Bool)) {
                (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode = (@:checkr _old ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode;
            };
            var _last = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lastStreamID : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7947"
            if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (_streamID => _cs in (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7948"
                if ((_streamID > _last : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7949"
                    _cs._abortStreamLocked(stdgo._internal.net.http.Http__http2errclientconngotgoaway._http2errClientConnGotGoAway);
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
    static public function setDoNotReuse( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7927"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse = true;
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
    static public function _healthCheck( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void {
        @:recv var _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = _cc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _pingTimeout = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._pingTimeout() : stdgo._internal.time.Time_duration.Duration);
            var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(stdgo._internal.context.Context_background.background(), _pingTimeout), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7915"
            _cc._vlogf(("http2: Transport sending health check" : stdgo.GoString));
            var _err = @:assignType (_cc.ping(_ctx) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7917"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7918"
                _cc._vlogf(("http2: Transport health check failure: %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7919"
                _cc._closeForLostPing();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7921"
                _cc._vlogf(("http2: Transport health check success" : stdgo.GoString));
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
}
