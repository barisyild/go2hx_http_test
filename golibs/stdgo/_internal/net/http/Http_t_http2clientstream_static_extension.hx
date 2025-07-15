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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientStream_asInterface) class T_http2clientStream_static_extension {
    @:keep
    @:tdfield
    static public function _copyTrailers( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9854"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer != null) for (_k => _vv in (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer) {
            var _t = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resTrailer;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9856"
            if ((_t : stdgo._internal.net.http.Http_header.Header) == null) {
                @:_1 (_t : stdgo._internal.net.http.Http_header.Header).__setData__((({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header));
            };
            ((_t : stdgo._internal.net.http.Http_header.Header))[_k] = _vv;
        };
    }
    @:keep
    @:tdfield
    static public function _awaitFlowControl( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _maxBytes:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _taken = (0 : stdgo.GoInt32), _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _ctx = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8907"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8909"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8910"
                if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8911"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errclientconnclosed._http2errClientConnClosed };
                            _taken = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _taken = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8913"
                if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8914"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errstopreqbodywrite._http2errStopReqBodyWrite };
                            _taken = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _taken = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8916"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
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
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8918"
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr };
                                            _taken = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _taken = __ret__._0;
                                        _err = __ret__._1;
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
                                __c__1 = _ctx.done();
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8920"
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : _ctx.err() };
                                            _taken = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _taken = __ret__._0;
                                        _err = __ret__._1;
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
                            if (__c__2 == null) {
                                __c__2 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8922"
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled };
                                            _taken = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _taken = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
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
__c__1.__reset__();
__c__2.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8925"
                {
                    var _a = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._available() : stdgo.GoInt32);
                    if ((_a > (0 : stdgo.GoInt32) : Bool)) {
                        var _take = @:assignType (_a : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8927"
                        if (((_take : stdgo.GoInt) > _maxBytes : Bool)) {
                            _take = (_maxBytes : stdgo.GoInt32);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8931"
                        if ((_take > ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize : stdgo.GoInt32) : Bool)) {
                            _take = ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize : stdgo.GoInt32);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8934"
                        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._take(_take);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8935"
                        {
                            final __ret__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _take, _1 : (null : stdgo.Error) };
                                _taken = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _taken = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8937"
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
                return { _0 : _taken, _1 : _err };
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
                return { _0 : _taken, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeRequestBody( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _body = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody : stdgo._internal.io.Io_readcloser.ReadCloser);
            var _sentEnd = @:assignType (false : Bool);
            var _hasTrailers = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer != null : Bool);
            var _remainLen = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyContentLength : stdgo.GoInt64);
            var _hasContentLen = @:assignType (_remainLen != ((-1i64 : stdgo.GoInt64)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8778"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _maxFrameSize = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8780"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            var _scratchLen = @:assignType (_cs._frameScratchBufferLen(_maxFrameSize) : stdgo.GoInt);
            var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8785"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2bufpool._http2bufPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _1 : false };
                }, _bp = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (((_bp : stdgo.Slice<stdgo.GoUInt8>).length) >= _scratchLen : Bool) : Bool)) {
                    {
                        var _a0 = _bp;
                        final __f__ = stdgo._internal.net.http.Http__http2bufpool._http2bufPool.put;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(_a0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))) });
                    };
                    _buf = (_bp : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _buf = (new stdgo.Slice<stdgo.GoUInt8>((_scratchLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _a0 = (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
                        final __f__ = stdgo._internal.net.http.Http__http2bufpool._http2bufPool.put;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(_a0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType))) });
                    };
                };
            };
            var _sawEOF:Bool = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8794"
            while (!_sawEOF) {
                var __tmp__ = _body.read(_buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8796"
                if (_hasContentLen) {
                    _remainLen = (_remainLen - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8798"
                    if (((_remainLen == (0i64 : stdgo.GoInt64)) && (_err == null) : Bool)) {
                        var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
                        var _n1:stdgo.GoInt = (0 : stdgo.GoInt);
                        {
                            var __tmp__ = _body.read((_scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                            _n1 = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        _remainLen = (_remainLen - ((_n1 : stdgo.GoInt64)) : stdgo.GoInt64);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8811"
                    if ((_remainLen < (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.net.http.Http__http2errreqbodytoolong._http2errReqBodyTooLong;
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8813"
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
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8816"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8817"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                    var _bodyClosed = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed != null : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8819"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8820"
                    if (_bodyClosed) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8822"
                        {
                            final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errstopreqbodywrite._http2errStopReqBodyWrite;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        _sawEOF = true;
                        _err = (null : stdgo.Error);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8827"
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
                var _remain = (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8832"
                while ((((_remain.length) > (0 : stdgo.GoInt) : Bool) && (_err == null) : Bool)) {
                    var _allowed:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                    {
                        var __tmp__ = _cs._awaitFlowControl((_remain.length));
                        _allowed = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8835"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8836"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8838"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                    var _data = (_remain.__slice__(0, _allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _remain = (_remain.__slice__(_allowed) : stdgo.Slice<stdgo.GoUInt8>);
                    _sentEnd = ((_sawEOF && (_remain.length) == ((0 : stdgo.GoInt)) : Bool) && !_hasTrailers : Bool);
                    _err = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeData((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, _sentEnd, _data);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8843"
                    if (_err == null) {
                        _err = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8852"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8854"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8855"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8859"
            if (_sentEnd) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8863"
                {
                    final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8869"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _trailer = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer : stdgo._internal.net.http.Http_header.Header);
            _err = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8872"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8873"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8874"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8877"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _trls:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8880"
            if (((_trailer.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _cc._encodeTrailers(_trailer);
                    _trls = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8882"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8883"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8889"
            if (((_trls.length) > (0 : stdgo.GoInt) : Bool)) {
                _err = _cc._writeHeaders((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, true, _maxFrameSize, _trls);
            } else {
                _err = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeData((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, true, (null : stdgo.Slice<stdgo.GoUInt8>));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8894"
            {
                var _ferr = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush() : stdgo.Error);
                if (((_ferr != null) && (_err == null) : Bool)) {
                    _err = _ferr;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8897"
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _frameScratchBufferLen( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _maxFrameSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        {};
        var _n = @:assignType (_maxFrameSize : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8751"
        if ((_n > (524288i64 : stdgo.GoInt64) : Bool)) {
            _n = (524288i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8754"
        {
            var _cl = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyContentLength : stdgo.GoInt64);
            if (((_cl != (-1i64 : stdgo.GoInt64)) && ((_cl + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) < _n : Bool) : Bool)) {
                _n = (_cl + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8761"
        if ((_n < (1i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8762"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8764"
        return (_n : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _cleanupWriteRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8616"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8618"
            _cc._decrStreamReservations();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8625"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _mustCloseBody = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8627"
        if ((((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody != null) && ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed == null) : Bool)) {
            _mustCloseBody = true;
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        };
        var _bodyClosed = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8632"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8633"
        if (_mustCloseBody) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8634"
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody.close();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8635"
            if (_bodyClosed != null) _bodyClosed.__close__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8637"
        if (_bodyClosed != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8638"
            _bodyClosed.__get__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8641"
        if (((_err != null) && (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentEndStream : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8645"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerClosed;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                _err = (null : stdgo.Error);
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
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8651"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8652"
            _cs._abortStream(_err);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8653"
            if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentHeaders) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8654"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : true };
                    } catch(__exception__) {
                        { _0 : ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8655"
                        if (({
                            final __t__ = _se.cause;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) != (({
                            final __t__ = stdgo._internal.net.http.Http__http2errfrompeer._http2errFromPeer;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8656"
                            _cc._writeStreamReset((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, _se.code, _err);
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8659"
                        _cc._writeStreamReset((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, (8u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), _err);
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8662"
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.closeWithError(_err);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8664"
            if (((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentHeaders && !(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentEndStream : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8665"
                _cc._writeStreamReset((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), (null : stdgo.Error));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8667"
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.closeWithError(stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8669"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8670"
            _cc._forgetStreamID((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8673"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
        var _werr = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8675"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8676"
        if (_werr != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8677"
            _cc.close();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8680"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec != null) (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._donec.__close__();
    }
    @:keep
    @:tdfield
    static public function _encodeAndWriteHeaders( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _ctx = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8570"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8574"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
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
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8576"
                                {
                                    final __ret__:stdgo.Error = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr;
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
                            __c__1 = _ctx.done();
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8578"
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
                        if (__c__2 == null) {
                            __c__2 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8580"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
                                };
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
__c__1.__reset__();
__c__2.__reset__();
            };
            var __tmp__ = stdgo._internal.net.http.Http__http2commaseparatedtrailers._http2commaSeparatedTrailers(_req), _trailers:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8590"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8591"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            var _hasTrailers = @:assignType (_trailers != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
            var _contentLen = @:assignType (stdgo._internal.net.http.Http__http2actualcontentlength._http2actualContentLength(_req) : stdgo.GoInt64);
            var _hasBody = @:assignType (_contentLen != ((0i64 : stdgo.GoInt64)) : Bool);
            var __tmp__ = _cc._encodeHeaders(_req, (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._requestedGzip, _trailers?.__copy__(), _contentLen), _hdrs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8597"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8598"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            var _endStream = @:assignType (!_hasBody && !_hasTrailers : Bool);
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentHeaders = true;
            _err = _cc._writeHeaders((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, _endStream, ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize : stdgo.GoInt), _hdrs);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8605"
            stdgo._internal.net.http.Http__http2tracewroteheaders._http2traceWroteHeaders((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8606"
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
    static public function _writeRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _ctx = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8425"
            {
                var _err = @:assignType (stdgo._internal.net.http.Http__http2checkconnheaders._http2checkConnHeaders(_req) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8426"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8432"
            if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqHeaderMu == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8433"
                throw new stdgo.AnyInterface(("RoundTrip on uninitialized ClientConn" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8435"
            {
                var __select__ = true;
                var __c__0 = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqHeaderMu;
var __c__1 = null;
var __c__2 = null;
                while (__select__) {
                    if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqHeaderMu != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__(({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11));
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8438"
                                return _err = stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
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
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8440"
                                return _err = _ctx.err();
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8443"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8444"
            if (({
                final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8445"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.stop();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8447"
            _cc._decrStreamReservationsLocked();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8448"
            {
                var _err = @:assignType (_cc._awaitOpenSlotForStreamLocked(_cs) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8449"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8450"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqHeaderMu.__get__();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8451"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8453"
            _cc._addStreamLocked(_cs);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8454"
            if (stdgo._internal.net.http.Http__http2isconnectioncloserequest._http2isConnectionCloseRequest(_req)) {
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doNotReuse = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8457"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8460"
            if ((((!(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._disableCompression() && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Accept-Encoding" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Range" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHead : Bool)) {
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._requestedGzip = true;
            };
            var _continueTimeout = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._expectContinueTimeout() : stdgo._internal.time.Time_duration.Duration);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8480"
            if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8481"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken(((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[("Expect" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("100-continue" : stdgo.GoString))) {
                    _continueTimeout = (0i64 : stdgo._internal.time.Time_duration.Duration);
                } else {
                    (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._on100 = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                };
            };
            _err = _cs._encodeAndWriteHeaders(_req);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8493"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqHeaderMu.__get__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8494"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8495"
                return _err;
            };
            var _hasBody = @:assignType ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyContentLength != ((0i64 : stdgo.GoInt64)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8499"
            if (!_hasBody) {
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentEndStream = true;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8502"
                if (_continueTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8503"
                    stdgo._internal.net.http.Http__http2tracewait100continue._http2traceWait100Continue((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace);
                    var _timer = stdgo._internal.time.Time_newtimer.newTimer(_continueTimeout);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8505"
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
var __c__4 = null;
                        while (__select__) {
                            if ({
                                if (__c__0 == null) {
                                    __c__0 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                                };
                                __c__0 != null && __c__0.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__0.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._on100;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        _err = (null : stdgo.Error);
                                    };
                                };
                            } else if ({
                                if (__c__2 == null) {
                                    __c__2 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort;
                                };
                                __c__2 != null && __c__2.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__2.__get__();
                                    {
                                        _err = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr;
                                    };
                                };
                            } else if ({
                                if (__c__3 == null) {
                                    __c__3 = _ctx.done();
                                };
                                __c__3 != null && __c__3.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__3.__get__();
                                    {
                                        _err = _ctx.err();
                                    };
                                };
                            } else if ({
                                if (__c__4 == null) {
                                    __c__4 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                                };
                                __c__4 != null && __c__4.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__4.__get__();
                                    {
                                        _err = stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
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
__c__4.__reset__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8517"
                    _timer.stop();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8518"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8519"
                        stdgo._internal.net.http.Http__http2tracewroterequest._http2traceWroteRequest((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace, _err);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8520"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8524"
                {
                    _err = _cs._writeRequestBody(_req);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8525"
                        if (({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) != (({
                            final __t__ = stdgo._internal.net.http.Http__http2errstopreqbodywrite._http2errStopReqBodyWrite;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8526"
                            stdgo._internal.net.http.Http__http2tracewroterequest._http2traceWroteRequest((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace, _err);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8527"
                            return _err;
                        };
                    } else {
                        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentEndStream = true;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8534"
            stdgo._internal.net.http.Http__http2tracewroterequest._http2traceWroteRequest((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace, _err);
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
            var _respHeaderRecv:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8538"
            {
                var _d = @:assignType (_cc._responseHeaderTimeout() : stdgo._internal.time.Time_duration.Duration);
                if (_d != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    var _timer = stdgo._internal.time.Time_newtimer.newTimer(_d);
                    {
                        final __f__ = _timer.stop;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    _respHeaderTimer = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                    _respHeaderRecv = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._respHeaderRecv;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8547"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8548"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
var __c__4 = null;
var __c__5 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerClosed;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8550"
                                    {
                                        final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                                __c__1 = _respHeaderTimer;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8552"
                                    {
                                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errtimeout._http2errTimeout;
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
                            if (__c__2 == null) {
                                __c__2 = _respHeaderRecv;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    _respHeaderRecv = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                                    _respHeaderTimer = (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
                                };
                            };
                        } else if ({
                            if (__c__3 == null) {
                                __c__3 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__3.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8557"
                                    {
                                        final __ret__:stdgo.Error = _err = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr;
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
                            if (__c__4 == null) {
                                __c__4 = _ctx.done();
                            };
                            __c__4 != null && __c__4.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__4.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8559"
                                    {
                                        final __ret__:stdgo.Error = _err = _ctx.err();
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
                            if (__c__5 == null) {
                                __c__5 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCancel;
                            };
                            __c__5 != null && __c__5.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__5.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8561"
                                    {
                                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__http2errrequestcanceled._http2errRequestCanceled;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
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
__c__3.__reset__();
__c__4.__reset__();
__c__5.__reset__();
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _doRequest( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var _err = @:assignType (_cs._writeRequest(_req) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L8411"
        _cs._cleanupWriteRequest(_err);
    }
    @:keep
    @:tdfield
    static public function _closeReqBodyLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7526"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7527"
            return;
        };
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        var _reqBodyClosed = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7531"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7532"
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7533"
                if (_reqBodyClosed != null) _reqBodyClosed.__close__();
            };
            a();
        }));
    }
    @:keep
    @:tdfield
    static public function _abortRequestBodyWrite( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7517"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7519"
            if ((((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody != null) && ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBodyClosed == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7520"
                _cs._closeReqBodyLocked();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7521"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
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
    static public function _abortStreamLocked( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7501"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortOnce.do_(function():Void {
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abortErr = _err;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7503"
            if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort != null) (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abort.__close__();
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7505"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7506"
            _cs._closeReqBodyLocked();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7509"
        if (({
            final value = (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7511"
            (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
        };
    }
    @:keep
    @:tdfield
    static public function _abortStream( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7495"
            (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7497"
            _cs._abortStreamLocked(_err);
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
    static public function _get1xxTraceFunc( _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error {
        @:recv var _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> = _cs;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7488"
        {
            var _fn = @:assignType (stdgo._internal.net.http.Http__http2got1xxfuncfortests._http2got1xxFuncForTests : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error);
            if (_fn != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7489"
                return _fn;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7491"
        return stdgo._internal.net.http.Http__http2tracegot1xxresponsefunc._http2traceGot1xxResponseFunc((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace);
    }
}
