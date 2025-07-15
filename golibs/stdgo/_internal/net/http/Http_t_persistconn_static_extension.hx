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
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConn_asInterface) class T_persistConn_static_extension {
    @:keep
    @:tdfield
    static public function _closeLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2735"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2736"
            throw new stdgo.AnyInterface(("nil error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._broken = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2739"
        if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed == null) {
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = _err;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2741"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._decConnsPerHost((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2744"
            if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2745"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = stdgo._internal.net.http.Http__errcallerownsconn._errCallerOwnsConn;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2746"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2748"
                if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech != null) (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech.__close__();
            };
        };
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutateHeaderFunc = null;
    }
    @:keep
    @:tdfield
    static public function _close( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2729"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2731"
            _pc._closeLocked(_err);
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
    static public function _markReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2718"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reused = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2720"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _roundTrip( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2567"
            stdgo._internal.net.http.Http__testhookenterroundtrip._testHookEnterRoundTrip();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2568"
            if (!(@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._replaceReqCanceler((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), _pc._cancelRequest)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2569"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._putOrCloseIdleConn(_pc);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2570"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled };
                    _resp = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2572"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2573"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numExpectedResponses++;
            var _headerFn = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutateHeaderFunc : stdgo._internal.net.http.Http_header.Header -> Void);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2575"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2577"
            if (_headerFn != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2578"
                _headerFn(_req._extraHeaders());
            };
            var _requestedGzip = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2586"
            if ((((!(@:checkr (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableCompression && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.header.get(("Accept-Encoding" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.header.get(("Range" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.method != ("HEAD" : stdgo.GoString)) : Bool)) {
                _requestedGzip = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2603"
                _req._extraHeaders().set(("Accept-Encoding" : stdgo.GoString), ("gzip" : stdgo.GoString));
            };
            var _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2607"
            if (((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.body != null : Bool) && _req._expectsContinue() : Bool)) {
                _continueCh = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2611"
            if ((((@:checkr (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableKeepAlives && !_req._wantsClose() : Bool) && !stdgo._internal.net.http.Http__isprotocolswitchheader._isProtocolSwitchHeader((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.header) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2614"
                _req._extraHeaders().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
            };
            var _gone = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            {
                var _a0 = _gone;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2621"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2622"
                            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._setReqCanceler((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), null);
                        };
                    };
                    a();
                }) });
            };
            {};
            var _startBytesWritten = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite : stdgo.GoInt64);
            var _writeErrCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2633"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writech.__send__((new stdgo._internal.net.http.Http_t_writerequest.T_writeRequest(_req, _writeErrCh, _continueCh) : stdgo._internal.net.http.Http_t_writerequest.T_writeRequest));
            var _resc = (new stdgo.Chan<stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError>(0, () -> ({} : stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError)) : stdgo.Chan<stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2636"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqch.__send__(({ _req : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request, _cancelKey : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), _ch : _resc, _addedGzip : _requestedGzip, _continueCh : _continueCh, _callerGone : _gone } : stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan));
            var _respHeaderTimer:stdgo.Chan<stdgo._internal.time.Time_time.Time> = (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
            var _cancelChan = (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel;
            var _ctxDoneChan = _req.context().done();
            var _pcClosed = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech;
            var _canceled = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2650"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2651"
                stdgo._internal.net.http.Http__testhookwaitresloop._testHookWaitResLoop();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2652"
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
                                __c__0 = _writeErrCh;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2654"
                                    if (false) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2655"
                                        _req._logf(("writeErrCh resv: %T/%#v" : stdgo.GoString), ({
                                            final __t__ = _err;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }), ({
                                            final __t__ = _err;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2657"
                                    if (_err != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2658"
                                        _pc._close(stdgo._internal.fmt.Fmt_errorf.errorf(("write error: %w" : stdgo.GoString), ({
                                            final __t__ = _err;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        })));
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2659"
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, _err) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _resp = __ret__._0;
                                            _err = __ret__._1;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2661"
                                    {
                                        var _d = @:assignType ((@:checkr (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseHeaderTimeout : stdgo._internal.time.Time_duration.Duration);
                                        if ((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2662"
                                            if (false) {
                                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2663"
                                                _req._logf(("starting timer for %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_d, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                                            };
                                            var _timer = stdgo._internal.time.Time_newtimer.newTimer(_d);
                                            {
                                                final __f__ = _timer.stop;
                                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                            };
                                            _respHeaderTimer = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                                        };
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _pcClosed;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    _pcClosed = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2671"
                                    if ((_canceled || (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._replaceReqCanceler((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), null) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2672"
                                        if (false) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2673"
                                            _req._logf(("closech recv: %T %#v" : stdgo.GoString), ({
                                                final __t__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }), ({
                                                final __t__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }));
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2675"
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _resp = __ret__._0;
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
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = _respHeaderTimer;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2678"
                                    if (false) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2679"
                                        _req._logf(("timeout waiting for response headers." : stdgo.GoString));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2681"
                                    _pc._close(stdgo._internal.net.http.Http__errtimeout._errTimeout);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2682"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errtimeout._errTimeout };
                                            _resp = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _resp = __ret__._0;
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
                            if (__c__3 == null) {
                                __c__3 = _resc;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _re = __c__3.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2684"
                                    if ((({
                                        final value = _re._res;
                                        (value == null || (value : Dynamic).__nil__);
                                    })) == ((_re._err == null))) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2685"
                                        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: exactly one of res or err should be set; nil=%v" : stdgo.GoString), new stdgo.AnyInterface(({
                                            final value = _re._res;
                                            (value == null || (value : Dynamic).__nil__);
                                        }), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2687"
                                    if (false) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2688"
                                        _req._logf(("resc recv: %p, %T/%#v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_re._res, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))), ({
                                            final __t__ = _re._err;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }), ({
                                            final __t__ = _re._err;
                                            if (__t__ == null) {
                                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                            } else {
                                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                            };
                                        }));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2690"
                                    if (_re._err != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2691"
                                        {
                                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _pc._mapRoundTripError(_req, _startBytesWritten, _re._err) };
                                                _resp = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                            _resp = __ret__._0;
                                            _err = __ret__._1;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2693"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _re._res, _1 : (null : stdgo.Error) };
                                            _resp = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _resp = __ret__._0;
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
                            if (__c__4 == null) {
                                __c__4 = _cancelChan;
                            };
                            __c__4 != null && __c__4.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__4.__get__();
                                {
                                    _canceled = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._cancelRequest((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled);
                                    _cancelChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                                };
                            };
                        } else if ({
                            if (__c__5 == null) {
                                __c__5 = _ctxDoneChan;
                            };
                            __c__5 != null && __c__5.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__5.__get__();
                                {
                                    _canceled = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._cancelRequest((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), _req.context().err());
                                    _cancelChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                                    _ctxDoneChan = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
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
                return { _0 : _resp, _1 : _err };
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
                return { _0 : _resp, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _wroteRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2467"
            {
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeErrCh;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2471"
                                    return _err == null;
                                };
                            };
                        } else {
                            __select__ = false;
                            {
                                var _t = stdgo._internal.time.Time_newtimer.newTimer(stdgo._internal.net.http.Http__maxwritewaitbeforeconnreuse._maxWriteWaitBeforeConnReuse);
                                {
                                    final __f__ = _t.stop;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2485"
                                {
                                    {
                                        var __select__ = true;
                                        var __c__0 = null;
var __c__1 = null;
                                        while (__select__) {
                                            if ({
                                                if (__c__0 == null) {
                                                    __c__0 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeErrCh;
                                                };
                                                __c__0 != null && __c__0.__isGet__(true);
                                            }) {
                                                __select__ = false;
                                                {
                                                    var _err = __c__0.__get__();
                                                    {
                                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2487"
                                                        {
                                                            final __ret__:Bool = _err == null;
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
                                                    __c__1 = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                                                };
                                                __c__1 != null && __c__1.__isGet__(true);
                                            }) {
                                                __select__ = false;
                                                {
                                                    __c__1.__get__();
                                                    {
                                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2489"
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
                                            };
                                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                            stdgo._internal.internal.Async.tick();
                                        };
                                        __c__0.__reset__();
__c__1.__reset__();
                                    };
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
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
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
    static public function _writeLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeLoopDone;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2420"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2421"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writech;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _wr = __c__0.__get__();
                                {
                                    var _startBytesWritten = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite : stdgo.GoInt64);
                                    var _err = @:assignType ((@:checkr _wr._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request._write(stdgo.Go.asInterface((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isProxy, (@:checkr _wr._req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extra, _pc._waitForContinue(_wr._continueCh)) : stdgo.Error);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2425"
                                    {
                                        var __tmp__ = @:castTranslate try {
                                            { _0 : (stdgo.Go.typeAssert(({
                                                final __t__ = _err;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_requestbodyreaderrordott_requestbodyreaderror.__type__stdgodot_internaldotnetdothttpdotHttp_t_requestbodyreaderrordotT_requestBodyReadError) : stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError), _1 : true };
                                        } catch(__exception__) {
                                            { _0 : ({} : stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError), _1 : false };
                                        }, _bre = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            _err = _bre._error;
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2434"
                                            _wr._req._setError(_err);
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2436"
                                    if (_err == null) {
                                        _err = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2439"
                                    if (_err != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2440"
                                        if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite == (_startBytesWritten)) {
                                            _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nothingwrittenerrordott_nothingwrittenerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_nothingwrittenerrordotT_nothingWrittenError);
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2444"
                                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeErrCh.__send__(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2445"
                                    _wr._ch.__send__(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2446"
                                    if (_err != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2447"
                                        _pc._close(_err);
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2448"
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
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2451"
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
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
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
    static public function _waitForContinue( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>):() -> Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2358"
        if (_continueCh == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2359"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2361"
        return function():Bool {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                var _timer = stdgo._internal.time.Time_newtimer.newTimer((@:checkr (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expectContinueTimeout);
                {
                    final __f__ = _timer.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2365"
                {
                    {
                        var __select__ = true;
                        var __c__0 = null;
var __c__1 = null;
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
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2369"
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return true;
                                        };
                                    };
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2371"
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
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return false;
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
        };
    }
    @:keep
    @:tdfield
    static public function _readResponse( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _rc:stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2301"
        if ((({
            final value = _trace;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotFirstResponseByte != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2302"
            {
                var __tmp__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br.peek((1 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_peek.length == (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2303"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotFirstResponseByte();
                };
            };
        };
        var _num1xx = @:assignType (0 : stdgo.GoInt);
        {};
        var _continueCh = _rc._continueCh;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2310"
        while (true) {
            {
                var __tmp__ = stdgo._internal.net.http.Http_readresponse.readResponse((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br, _rc._req);
                _resp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2312"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2313"
                return { _0 : _resp, _1 : _err };
            };
            var _resCode = @:assignType ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2316"
            if (_continueCh != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2317"
                if (_resCode == ((100 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2318"
                    if ((({
                        final value = _trace;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).got100Continue != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2319"
                        (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).got100Continue();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2321"
                    _continueCh.__send__(({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11));
                    _continueCh = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                } else if ((_resCode >= (200 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2324"
                    if (_continueCh != null) _continueCh.__close__();
                    _continueCh = (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                };
            };
            var _is1xx = @:assignType (((100 : stdgo.GoInt) <= _resCode : Bool) && (_resCode <= (199 : stdgo.GoInt) : Bool) : Bool);
            var _is1xxNonTerminal = @:assignType (_is1xx && (_resCode != (101 : stdgo.GoInt)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2331"
            if (_is1xxNonTerminal) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2332"
                _num1xx++;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2333"
                if ((_num1xx > (5 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2334"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/http: too many 1xx informational responses" : stdgo.GoString)) };
                        _resp = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit = _pc._maxHeaderResponseSize();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2337"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).got1xxResponse != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2338"
                    {
                        var _err = @:assignType ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).got1xxResponse(_resCode, ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2339"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _resp = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2342"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2344"
            break;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2346"
        if (_resp._isProtocolSwitch()) {
            (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.net.http.Http__newreadwritecloserbody._newReadWriteCloserBody((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br, (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn);
        };
        (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2351"
        return { _0 : _resp, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readLoopPeekFailLocked( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _peekErr:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2264"
        if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2265"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2267"
        {
            var _n = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br.buffered() : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br.peek(_n), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2269"
                if (stdgo._internal.net.http.Http__is408message._is408Message(_buf)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2270"
                    _pc._closeLocked(stdgo._internal.net.http.Http__errserverclosedidle._errServerClosedIdle);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2271"
                    return;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2273"
                    stdgo._internal.log.Log_printf.printf(("Unsolicited response received on idle HTTP channel starting with %q; err=%v" : stdgo.GoString), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                        final __t__ = _peekErr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2276"
        if (({
            final __t__ = _peekErr;
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2278"
            _pc._closeLocked(stdgo._internal.net.http.Http__errserverclosedidle._errServerClosedIdle);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2280"
            _pc._closeLocked(stdgo._internal.fmt.Fmt_errorf.errorf(("readLoopPeekFailLocked: %w" : stdgo.GoString), ({
                final __t__ = _peekErr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })));
        };
    }
    @:keep
    @:tdfield
    static public function _readLoop( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _closeErr = @:assignType (stdgo._internal.net.http.Http__errreadloopexiting._errReadLoopExiting : stdgo.Error);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2086"
                        _pc._close(_closeErr);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2087"
                        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._removeIdleConn(_pc);
                    };
                    a();
                }) });
            };
            var _tryPutIdleConn = function(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):Bool {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2091"
                {
                    var _err = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._tryPutIdleConn(_pc) : stdgo.Error);
                    if (_err != null) {
                        _closeErr = _err;
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2093"
                        if (((({
                            final value = _trace;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).putIdleConn != null : Bool) && (({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) != ({
                            final __t__ = stdgo._internal.net.http.Http__errkeepalivesdisabled._errKeepAlivesDisabled;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2094"
                            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).putIdleConn(_err);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2096"
                        return false;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2098"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).putIdleConn != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2099"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).putIdleConn((null : stdgo.Error));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2101"
                return true;
            };
            var _eofc = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            {
                var _a0 = _eofc;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2111"
            stdgo._internal.net.http.Http__testhookmu._testHookMu.lock();
            var _testHookReadLoopBeforeNextRead = @:assignType (stdgo._internal.net.http.Http__testhookreadloopbeforenextread._testHookReadLoopBeforeNextRead : () -> Void);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2113"
            stdgo._internal.net.http.Http__testhookmu._testHookMu.unlock();
            var _alive = @:assignType (true : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2116"
            while (_alive) {
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit = _pc._maxHeaderResponseSize();
                var __tmp__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br.peek((1 : stdgo.GoInt)), __12:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2120"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2121"
                if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numExpectedResponses == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2122"
                    _pc._readLoopPeekFailLocked(_err);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2123"
                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2124"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2126"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                var _rc = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqch.__get__()?.__copy__() : stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan);
                var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_rc._req.context());
                var _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2132"
                if (_err == null) {
                    {
                        var __tmp__ = _pc._readResponse(_rc?.__copy__(), _trace);
                        _resp = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError(_err) : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transportreadfromservererrordott_transportreadfromservererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_transportreadfromservererrordotT_transportReadFromServerError);
                    _closeErr = _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2139"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2140"
                    if (((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: server response headers exceeded %d bytes; aborted" : stdgo.GoString), new stdgo.AnyInterface(_pc._maxHeaderResponseSize(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2144"
                    {
                        var __select__ = true;
                        var __c__0 = _rc._ch;
var __c__1 = null;
                        while (__select__) {
                            if (_rc._ch != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(({ _err : _err } : stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError));
                                    {};
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = _rc._callerGone;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2147"
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
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2149"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit = (9223372036854775807i64 : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2153"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2154"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numExpectedResponses--;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2155"
                (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                var _bodyWritable = @:assignType (_resp._bodyIsWritable() : Bool);
                var _hasBody = @:assignType (((@:checkr _rc._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("HEAD" : stdgo.GoString)) && ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != (0i64 : stdgo.GoInt64)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2160"
                if (((((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close || (@:checkr _rc._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close : Bool) || ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode <= (199 : stdgo.GoInt) : Bool) : Bool) || _bodyWritable : Bool)) {
                    _alive = false;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2167"
                if ((!_hasBody || _bodyWritable : Bool)) {
                    var _replaced = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                    _alive = ((((_alive && !(@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF : Bool) && _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2180"
                    if (_bodyWritable) {
                        _closeErr = stdgo._internal.net.http.Http__errcallerownsconn._errCallerOwnsConn;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2184"
                    {
                        var __select__ = true;
                        var __c__0 = _rc._ch;
var __c__1 = null;
                        while (__select__) {
                            if (_rc._ch != null && __c__0.__isSend__(true)) {
                                __select__ = false;
                                {
                                    __c__0.__send__(({ _res : _resp } : stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError));
                                    {};
                                };
                            } else if ({
                                if (__c__1 == null) {
                                    __c__1 = _rc._callerGone;
                                };
                                __c__1 != null && __c__1.__isGet__(true);
                            }) {
                                __select__ = false;
                                {
                                    __c__1.__get__();
                                    {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2187"
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
                            };
                            #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                        __c__0.__reset__();
__c__1.__reset__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2193"
                    _testHookReadLoopBeforeNextRead();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2194"
                    continue;
                };
                var _waitForBodyRead = (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                var _body = (stdgo.Go.setRef(({ _body : (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _earlyCloseFn : function():stdgo.Error {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2201"
                    _waitForBodyRead.__send__(false);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2202"
                    _eofc.__get__();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2203"
                    return (null : stdgo.Error);
                }, _fn : function(_err:stdgo.Error):stdgo.Error {
                    var _isEOF = @:assignType (({
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
                    })) : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2208"
                    _waitForBodyRead.__send__(_isEOF);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2209"
                    if (_isEOF) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2210"
                        _eofc.__get__();
                    } else if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2212"
                        {
                            var _cerr = @:assignType (_pc._canceled() : stdgo.Error);
                            if (_cerr != null) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2213"
                                return _cerr;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2216"
                    return _err;
                } } : stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodyeofsignaldott_bodyeofsignal.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodyeofsignaldotT_bodyEOFSignal })) : stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>);
                (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(_body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodyeofsignaldott_bodyeofsignal.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodyeofsignaldotT_bodyEOFSignal }));
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2221"
                if ((_rc._addedGzip && stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : _body } : stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_gzipreaderdott_gzipreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_gzipreaderdotT_gzipReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_gzipreaderdott_gzipreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_gzipreaderdotT_gzipReader }));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2223"
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("Content-Encoding" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2224"
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("Content-Length" : stdgo.GoString));
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uncompressed = true;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2229"
                {
                    var __select__ = true;
                    var __c__0 = _rc._ch;
var __c__1 = null;
                    while (__select__) {
                        if (_rc._ch != null && __c__0.__isSend__(true)) {
                            __select__ = false;
                            {
                                __c__0.__send__(({ _res : _resp } : stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError));
                                {};
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _rc._callerGone;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2232"
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
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2238"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _waitForBodyRead;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _bodyEOF = __c__0.__get__();
                                {
                                    var _replaced = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._replaceReqCanceler(_rc._cancelKey?.__copy__(), null) : Bool);
                                    _alive = (((((_alive && _bodyEOF : Bool) && !(@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF : Bool) && _pc._wroteRequest() : Bool) && _replaced : Bool) && _tryPutIdleConn(_trace) : Bool);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2246"
                                    if (_bodyEOF) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2247"
                                        _eofc.__send__(({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11));
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _rc._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    _alive = false;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2251"
                                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.cancelRequest(_rc._req);
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = _rc._req.context().done();
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    _alive = false;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2254"
                                    (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._cancelRequest(_rc._cancelKey?.__copy__(), _rc._req.context().err());
                                };
                            };
                        } else if ({
                            if (__c__3 == null) {
                                __c__3 = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closech;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__3.__get__();
                                {
                                    _alive = false;
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
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2259"
                _testHookReadLoopBeforeNextRead();
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
    static public function _mapRoundTripError( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2029"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2030"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2040"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeLoopDone.__get__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2045"
        {
            var _cerr = @:assignType (_pc._canceled() : stdgo.Error);
            if (_cerr != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2046"
                return _cerr;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2050"
        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _reqErr = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2052"
        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2053"
        if (_reqErr != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2054"
            return _reqErr;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2057"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.net.http.Http__errserverclosedidle._errServerClosedIdle;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2059"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2062"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transportreadfromservererrordott_transportreadfromservererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_transportreadfromservererrordotT_transportReadFromServerError) : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : true };
            } catch(__exception__) {
                { _0 : ({} : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : false };
            }, __12 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2063"
                if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite == (_startBytesWritten)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2064"
                    return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nothingwrittenerrordott_nothingwrittenerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_nothingwrittenerrordotT_nothingWrittenError);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2067"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2069"
        if (_pc._isBroken()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2070"
            if ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite == (_startBytesWritten)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2071"
                return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError(_err) : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nothingwrittenerrordott_nothingwrittenerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_nothingwrittenerrordotT_nothingWrittenError);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2073"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: HTTP/1.x transport connection broken: %w" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2075"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closeConnIfStillIdle( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _t = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2010"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2012"
            {
                var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._m != null && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._m.__exists__(_pc) ? { _0 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>), _1 : false }), __12:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2014"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2016"
            _t._removeIdleConnLocked(_pc);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2017"
            _pc._close(stdgo._internal.net.http.Http__erridleconntimeout._errIdleConnTimeout);
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
    static public function _cancelRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _err:stdgo.Error):Void {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1999"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canceledErr = _err;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2002"
            _pc._closeLocked(stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled);
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
    static public function _gotIdleConnTrace( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _idleAt:stdgo._internal.time.Time_time.Time):stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _t = ({} : stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1987"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _t.reused = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reused;
            _t.conn = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            _t.wasIdle = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1992"
            if (!_idleAt.isZero()) {
                _t.idleTime = stdgo._internal.time.Time_since.since(_idleAt?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1995"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _t;
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
                return _t;
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
                return _t;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _isReused( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1980"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _r = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reused : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1982"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1983"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _canceled( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):stdgo.Error {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1973"
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1975"
            {
                final __ret__:stdgo.Error = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canceledErr;
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
    static public function _isBroken( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1964"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        var _b = @:assignType ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed != null : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1966"
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1967"
        return _b;
    }
    @:keep
    @:tdfield
    static public function read( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1948"
        if (((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1949"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read limit of %d bytes exhausted" : stdgo.GoString), new stdgo.AnyInterface(_pc._maxHeaderResponseSize(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1951"
        if (((_p.length : stdgo.GoInt64) > (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit : Bool)) {
            _p = (_p.__slice__(0, (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1955"
        if (({
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
            (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF = true;
        };
        (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit = ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readLimit - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1959"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _maxHeaderResponseSize( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):stdgo.GoInt64 {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1941"
        {
            var _v = @:assignType ((@:checkr (@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxResponseHeaderBytes : stdgo.GoInt64);
            if (_v != ((0i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1942"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1944"
        return (10485760i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _addTLS( _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error {
        @:recv var _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pconn;
        var _cfg = stdgo._internal.net.http.Http__clonetlsconfig._cloneTLSConfig((@:checkr (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1536"
        if ((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName = _name?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1539"
        if ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey._onlyH1) {
            (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = (null : stdgo.Slice<stdgo.GoString>);
        };
        var _plainConn = @:assignType ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn : stdgo._internal.net.Net_conn.Conn);
        var _tlsConn = stdgo._internal.crypto.tls.Tls_client.client(_plainConn, _cfg);
        var _errc = (new stdgo.Chan<stdgo.Error>((2 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        var _timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1546"
        {
            var _d = @:assignType ((@:checkr (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeTimeout : stdgo._internal.time.Time_duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                _timer = stdgo._internal.time.Time_afterfunc.afterFunc(_d, function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1548"
                    _errc.__send__(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError() : stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_tlshandshaketimeouterrordott_tlshandshaketimeouterror.__type__stdgodot_internaldotnetdothttpdotHttp_t_tlshandshaketimeouterrordotT_tlsHandshakeTimeoutError));
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1551"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1552"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeStart != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1553"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeStart();
                };
                var _err = @:assignType (_tlsConn.handshakeContext(_ctx) : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1556"
                if (({
                    final value = _timer;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1557"
                    _timer.stop();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1559"
                _errc.__send__(_err);
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1561"
        {
            var _err = @:assignType (_errc.__get__() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1562"
                _plainConn.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1563"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1564"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone((new stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), _err);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1566"
                return _err;
            };
        };
        var _cs = @:assignType (_tlsConn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1569"
        if ((({
            final value = _trace;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1570"
            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone(_cs?.__copy__(), (null : stdgo.Error));
        };
        (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState = (stdgo.Go.setRef(_cs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
        (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn = stdgo.Go.asInterface(_tlsConn, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1574"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldRetryRequest( _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _err:stdgo.Error):Bool {
        @:recv var _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = _pc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L701"
        if (stdgo._internal.net.http.Http__http2isnocachedconnerror._http2isNoCachedConnError(_err)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L708"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L710"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.net.http.Http__errmissinghost._errMissingHost;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L712"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L714"
        if (!_pc._isReused()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L722"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L724"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nothingwrittenerrordott_nothingwrittenerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_nothingwrittenerrordotT_nothingWrittenError) : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _1 : true };
            } catch(__exception__) {
                { _0 : ({} : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _1 : false };
            }, __12 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L727"
                return ((_req._outgoingLength() == (0i64 : stdgo.GoInt64)) || ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody != null) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L729"
        if (!_req._isReplayable()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L731"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L733"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transportreadfromservererrordott_transportreadfromservererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_transportreadfromservererrordotT_transportReadFromServerError) : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : true };
            } catch(__exception__) {
                { _0 : ({} : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : false };
            }, __13 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L736"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L738"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.net.http.Http__errserverclosedidle._errServerClosedIdle;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L742"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L744"
        return false;
    }
}
