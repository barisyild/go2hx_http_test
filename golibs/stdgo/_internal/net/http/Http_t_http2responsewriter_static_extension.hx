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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriter_asInterface) class T_http2responseWriter_static_extension {
    @:keep
    @:tdfield
    static public function push( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream;
        var _sc = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6846"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6850"
        if (_st._isPushed()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6851"
            return stdgo._internal.net.http.Http__http2errrecursivepush._http2ErrRecursivePush;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6854"
        if (({
            final value = _opts;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _opts = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_pushoptions.PushOptions), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_pushoptionsdotpushoptions.__type__stdgodot_internaldotnetdothttpdotHttp_pushoptionsdotPushOptions })) : stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6859"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method = ("GET" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6862"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header == null) {
            (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        var _wantScheme = @:assignType (("http" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6866"
        if (({
            final value = (@:checkr (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _wantScheme = ("https" : stdgo.GoString);
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_target?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6872"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6873"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6875"
        if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6876"
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_target?.__copy__(), ("/" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6877"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("target must be an absolute URL or an absolute path: %q" : stdgo.GoString), new stdgo.AnyInterface(_target, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme = _wantScheme?.__copy__();
            (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host = (@:checkr (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6882"
            if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != (_wantScheme)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6883"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("cannot push URL with scheme %q from request with scheme %q" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_wantScheme, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6885"
            if ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6886"
                return stdgo._internal.errors.Errors_new_.new_(("URL must have a host" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6889"
        if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_k => _ in (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6890"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), (":" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6891"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("promised request headers cannot include pseudo header %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6897"
            if ((((((stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("content-length" : stdgo.GoString)) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("content-encoding" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("trailer" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("te" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("expect" : stdgo.GoString)) : Bool) || stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold(_k?.__copy__(), ("host" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6903"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("promised request headers cannot include %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6906"
        {
            var _err = @:assignType (stdgo._internal.net.http.Http__http2checkvalidhttp2requestheaders._http2checkValidHTTP2RequestHeaders((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6907"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6913"
        if ((((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("GET" : stdgo.GoString)) && ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("HEAD" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6914"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("method %q must be GET or HEAD" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _msg = (stdgo.Go.setRef(({ _parent : _st, _method : (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), _url : _u, _header : stdgo._internal.net.http.Http__http2cloneheader._http2cloneHeader((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header), _done : (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.get(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Chan<stdgo.Error>) } : stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2startpushrequestdott_http2startpushrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2startpushrequestdotT_http2startPushRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6925"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
var __c__2 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveMsgCh;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6927"
                            return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6929"
                            return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                        };
                    };
                } else if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveMsgCh != null && __c__2.__isSend__(true)) {
                    __select__ = false;
                    {
                        __c__2.__send__(new stdgo.AnyInterface(stdgo.Go.asInterface(_msg, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2startpushrequestdott_http2startpushrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2startpushrequestdotT_http2startPushRequest), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2startpushrequestdott_http2startpushrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2startpushrequestdotT_http2startPushRequest }))));
                        {};
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6933"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6935"
                                return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6937"
                                return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done;
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _err = __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6939"
                                stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.put(new stdgo.AnyInterface((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))));
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6940"
                                return _err;
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
    }
    @:keep
    @:tdfield
    static public function _handlerDone( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        var _dirty = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirty : Bool);
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6822"
        _w.flush();
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6824"
        if (!_dirty) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6831"
            stdgo._internal.net.http.Http__http2responsewriterstatepool._http2responseWriterStatePool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_rws, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2responsewriterstatedott_http2responsewriterstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2responsewriterstatedotT_http2responseWriterState), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2responsewriterstatedott_http2responsewriterstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2responsewriterstatedotT_http2responseWriterState }))));
        };
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6796"
        if (({
            final value = _rws;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6797"
            throw new stdgo.AnyInterface(("Write called after Handler finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6799"
        if (!(@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6800"
            _w.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6802"
        if (!stdgo._internal.net.http.Http__http2bodyallowedforstatus._http2bodyAllowedForStatus((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6803"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteBytes = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteBytes + (((_dataB.length : stdgo.GoInt64) + (_dataS.length : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6806"
        if ((((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentContentLen != (0i64 : stdgo.GoInt64)) && ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteBytes > (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentContentLen : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6808"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: handler wrote more than declared Content-Length" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6811"
        if (_dataB != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6812"
            return (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.write(_dataB);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6814"
            return (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.writeString(_dataS?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6790"
        return _w._write((_s.length), (null : stdgo.Slice<stdgo.GoUInt8>), _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6786"
        return _w._write((_p.length), _p, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6722"
        if (({
            final value = _rws;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6723"
            throw new stdgo.AnyInterface(("WriteHeader called after Handler finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6725"
        _rws._writeHeader(_code);
    }
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6694"
        if (({
            final value = _rws;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6695"
            throw new stdgo.AnyInterface(("Header called after Handler finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6697"
        if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader == null) {
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6700"
        return (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader;
    }
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6674"
        if (({
            final value = _rws;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6675"
            throw new stdgo.AnyInterface(("CloseNotify called after Handler finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6677"
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifierMu.lock();
        var _ch = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifierCh;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6679"
        if (_ch == null) {
            _ch = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifierCh = _ch;
            var _cw = @:assignType ((@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw : stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6683"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6684"
                    _cw.wait_();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6685"
                    _ch.__send__(true);
                };
                a();
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6688"
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifierMu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6689"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _rws = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6649"
        if (({
            final value = _rws;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6650"
            throw new stdgo.AnyInterface(("Header called after Handler finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6653"
        if (((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.buffered() > (0 : stdgo.GoInt) : Bool)) {
            _err = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
        } else {
            {
                var __tmp__ = (new stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter).write((null : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6661"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6662"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    _err = (@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeErr;
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
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6669"
        return _err;
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6644"
        _w.flushError();
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6619"
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.time.Time_now.now()?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6622"
            _st._onWriteTimeout();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6623"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6625"
        (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._sendServeMsg(new stdgo.AnyInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6626"
            if (({
                final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6627"
                if (!(@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline.stop()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6629"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6632"
            if (_deadline.isZero()) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline = null;
            } else if (({
                final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline = stdgo._internal.time.Time_afterfunc.afterFunc(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()), _st._onWriteTimeout);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6637"
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline.reset(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()));
            };
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6640"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = _w;
        var _st = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6593"
        if ((!_deadline.isZero() && _deadline.before(stdgo._internal.time.Time_now.now()?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6596"
            _st._onReadTimeout();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6597"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6599"
        (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._sendServeMsg(new stdgo.AnyInterface(function(_sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6600"
            if (({
                final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6601"
                if (!(@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline.stop()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6603"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6606"
            if (_deadline.isZero()) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline = null;
            } else if (({
                final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline;
                (value == null || (value : Dynamic).__nil__);
            })) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline = stdgo._internal.time.Time_afterfunc.afterFunc(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()), _st._onReadTimeout);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6611"
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline.reset(_deadline.sub(stdgo._internal.time.Time_now.now()?.__copy__()));
            };
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6614"
        return (null : stdgo.Error);
    }
}
