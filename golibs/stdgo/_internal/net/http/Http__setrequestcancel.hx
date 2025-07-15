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
function _setRequestCancel(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper, _deadline:stdgo._internal.time.Time_time.Time):{ var _0 : () -> Void; var _1 : () -> Bool; } {
        var _stopTimer = null, _didTimeout = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L353"
        if (_deadline.isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L354"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : () -> Void; var _1 : () -> Bool; } = { _0 : stdgo._internal.net.http.Http__nop._nop, _1 : stdgo._internal.net.http.Http__alwaysfalse._alwaysFalse };
                _stopTimer = __tmp__._0;
                _didTimeout = __tmp__._1;
                __tmp__;
            };
        };
        var _knownTransport = @:assignType (stdgo._internal.net.http.Http__knownroundtripperimpl._knownRoundTripperImpl(_rt, _req) : Bool);
        var _oldCtx = @:assignType (_req.context() : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L359"
        if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel == null) && _knownTransport : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L362"
            if (!stdgo._internal.net.http.Http__timebeforecontextdeadline._timeBeforeContextDeadline(_deadline?.__copy__(), _oldCtx)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L363"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : () -> Void; var _1 : () -> Bool; } = { _0 : stdgo._internal.net.http.Http__nop._nop, _1 : stdgo._internal.net.http.Http__alwaysfalse._alwaysFalse };
                    _stopTimer = __tmp__._0;
                    _didTimeout = __tmp__._1;
                    __tmp__;
                };
            };
            var _cancelCtx:() -> Void = null;
            {
                var __tmp__ = stdgo._internal.context.Context_withdeadline.withDeadline(_oldCtx, _deadline?.__copy__());
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx = @:tmpset0 __tmp__._0;
                _cancelCtx = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L368"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : () -> Void; var _1 : () -> Bool; } = { _0 : _cancelCtx, _1 : function():Bool {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L368"
                    return stdgo._internal.time.Time_now.now().after(_deadline?.__copy__());
                } };
                _stopTimer = __tmp__._0;
                _didTimeout = __tmp__._1;
                __tmp__;
            };
        };
        var _initialReqCancel = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel;
        var _cancelCtx:() -> Void = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L373"
        if (stdgo._internal.net.http.Http__timebeforecontextdeadline._timeBeforeContextDeadline(_deadline?.__copy__(), _oldCtx)) {
            {
                var __tmp__ = stdgo._internal.context.Context_withdeadline.withDeadline(_oldCtx, _deadline?.__copy__());
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx = @:tmpset0 __tmp__._0;
                _cancelCtx = @:tmpset0 __tmp__._1;
            };
        };
        var _cancel = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel = _cancel;
        var _doCancel = @:assignType (function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L382"
            if (_cancel != null) _cancel.__close__();
            {};
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L386"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _rt;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t__setrequestcancel___localname___canceler_13723dott__setrequestcancel___localname___canceler_13723.__type__stdgodot_internaldotnetdothttpdotHttp_t__setrequestcancel___localname___canceler_13723dotT__setRequestCancel___localname___canceler_13723) : stdgo._internal.net.http.Http_t__setrequestcancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.net.http.Http_t__setrequestcancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L387"
                    _v.cancelRequest(_req);
                };
            };
        } : () -> Void);
        var _stopTimerCh = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
        var _once:stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
        _stopTimer = function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L394"
            _once.do_(function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L395"
                if (_stopTimerCh != null) _stopTimerCh.__close__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L396"
                if (_cancelCtx != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L397"
                    _cancelCtx();
                };
            });
        };
        var _timer = stdgo._internal.time.Time_newtimer.newTimer(stdgo._internal.time.Time_until.until(_deadline?.__copy__()));
        var _timedOut:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L405"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L406"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _initialReqCancel;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L408"
                                    _doCancel();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L409"
                                    _timer.stop();
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L411"
                                    _timedOut.store(true);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L412"
                                    _doCancel();
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = _stopTimerCh;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L414"
                                    _timer.stop();
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
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L418"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : () -> Void; var _1 : () -> Bool; } = { _0 : _stopTimer, _1 : _timedOut.load };
            _stopTimer = __tmp__._0;
            _didTimeout = __tmp__._1;
            __tmp__;
        };
    }
