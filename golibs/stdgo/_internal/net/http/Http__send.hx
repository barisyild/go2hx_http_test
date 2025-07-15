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
function _send(_ireq:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper, _deadline:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        var _req = _ireq;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L215"
        if (_rt == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L216"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L217"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysfalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: no Client.Transport or DefaultTransport" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L220"
        if (({
            final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L221"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L222"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysfalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L225"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestURI != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L226"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L227"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysfalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: Request.RequestURI can\'t be set in client requests" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _forkReq = @:assignType (function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L233"
            if (_ireq == (_req)) {
                _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
                {
                    var __tmp__ = (_ireq : stdgo._internal.net.http.Http_request.Request)?.__copy__();
                    var x = (_req : stdgo._internal.net.http.Http_request.Request);
                    x.method = __tmp__?.method;
                    x.uRL = __tmp__?.uRL;
                    x.proto = __tmp__?.proto;
                    x.protoMajor = __tmp__?.protoMajor;
                    x.protoMinor = __tmp__?.protoMinor;
                    x.header = __tmp__?.header;
                    x.body = __tmp__?.body;
                    x.getBody = __tmp__?.getBody;
                    x.contentLength = __tmp__?.contentLength;
                    x.transferEncoding = __tmp__?.transferEncoding;
                    x.close = __tmp__?.close;
                    x.host = __tmp__?.host;
                    x.form = __tmp__?.form;
                    x.postForm = __tmp__?.postForm;
                    x.multipartForm = __tmp__?.multipartForm;
                    x.trailer = __tmp__?.trailer;
                    x.remoteAddr = __tmp__?.remoteAddr;
                    x.requestURI = __tmp__?.requestURI;
                    x.tLS = __tmp__?.tLS;
                    x.cancel = __tmp__?.cancel;
                    x.response = __tmp__?.response;
                    x._ctx = __tmp__?._ctx;
                };
            };
        } : () -> Void);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L242"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L243"
            _forkReq();
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L247"
        {
            var _u = (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
            if ((({
                final value = _u;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Authorization" : stdgo.GoString)) == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                var _username = @:assignType (_u.username()?.__copy__() : stdgo.GoString);
                var __tmp__ = _u.password(), _password:stdgo.GoString = __tmp__._0, __12:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L250"
                _forkReq();
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = stdgo._internal.net.http.Http__cloneormakeheader._cloneOrMakeHeader((@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header);
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L252"
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicauth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L255"
        if (!_deadline.isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L256"
            _forkReq();
        };
        var __tmp__ = stdgo._internal.net.http.Http__setrequestcancel._setRequestCancel(_req, _rt, _deadline?.__copy__()), _stopTimer:() -> Void = __tmp__._0, _didTimeout:() -> Bool = __tmp__._1;
        {
            var __tmp__ = _rt.roundTrip(_req);
            _resp = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L261"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L262"
            _stopTimer();
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L263"
            if (({
                final value = _resp;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L264"
                stdgo._internal.log.Log_printf.printf(("RoundTripper returned a response & error; ignoring response" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L266"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError) : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError), _1 : false };
                }, _tlsErr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L270"
                    if (((_tlsErr.recordHeader.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (("HTTP/" : stdgo.GoString))) {
                        _err = stdgo._internal.net.http.Http_errschememismatch.errSchemeMismatch;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L274"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : _err };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L276"
        if (({
            final value = _resp;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L277"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a nil *Response with a nil error" : stdgo.GoString), ({
                    final __t__ = _rt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L279"
        if ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L290"
            if ((((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength > (0i64 : stdgo.GoInt64) : Bool) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("HEAD" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L291"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a *Response with content length %d but a nil Body" : stdgo.GoString), ({
                        final __t__ = _rt;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))) };
                    _resp = __tmp__._0;
                    _didTimeout = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((stdgo.Go.str() : stdgo.GoString)?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L295"
        if (!_deadline.isZero()) {
            (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stop : _stopTimer, _rc : (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _reqDidTimeout : _didTimeout } : stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_canceltimerbodydott_canceltimerbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_canceltimerbodydotT_cancelTimerBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_canceltimerbodydott_canceltimerbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_canceltimerbodydotT_cancelTimerBody }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L302"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _didTimeout = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
