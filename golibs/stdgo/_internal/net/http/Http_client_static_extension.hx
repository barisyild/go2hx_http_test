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
@:keep @:allow(stdgo._internal.net.http.Http.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function closeIdleConnections( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L947"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _c._transport();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_closeidleconnections___localname___closeidler_31464dott_closeidleconnections___localname___closeidler_31464.__type__stdgodot_internaldotnetdothttpdotHttp_t_closeidleconnections___localname___closeidler_31464dotT_closeIdleConnections___localname___closeIdler_31464) : stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : false };
            }, _tr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L948"
                _tr.closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function head( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("HEAD" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L930"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L931"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L933"
        return ({
            @:explicitConversion final __tmp__ = _c.do_(_req);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function postForm( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _data:stdgo._internal.net.url.Url_values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L895"
        return ({
            @:explicitConversion final __tmp__ = _c.post(_url?.__copy__(), ("application/x-www-form-urlencoded" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_data.encode()?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function post( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("POST" : stdgo.GoString), _url?.__copy__(), _body), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L853"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L854"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L856"
        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Content-Type" : stdgo.GoString), _contentType?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L857"
        return ({
            @:explicitConversion final __tmp__ = _c.do_(_req);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function _makeHeadersCopier( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _ireq:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _ireqhdr = stdgo._internal.net.http.Http__cloneormakeheader._cloneOrMakeHeader((@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header), _icookies:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L756"
        if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar != null) && ((@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Cookie" : stdgo.GoString)) != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _icookies = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L758"
            if (_ireq.cookies() != null) for (__12 => _c in _ireq.cookies()) {
                _icookies[(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name] = ((_icookies[(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>)).__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
            };
        };
        var _preq = _ireq;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L764"
        return function(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L776"
            if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar != null) && (_icookies != null) : Bool)) {
                var _changed:Bool = false;
                var _resp = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).response;
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L779"
                if (_resp.cookies() != null) for (__12 => _c in _resp.cookies()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L780"
                    {
                        var __tmp__ = (_icookies != null && _icookies.__exists__((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()) ? { _0 : _icookies[(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>), _1 : false }), __13:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L781"
                            if (_icookies != null) _icookies.__remove__((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name);
                            _changed = true;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L785"
                if (_changed) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L786"
                    _ireqhdr.del(("Cookie" : stdgo.GoString));
                    var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L788"
                    if (_icookies != null) for (__13 => _cs in _icookies) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L789"
                        if (_cs != null) for (__14 => _c in _cs) {
                            _ss = (_ss.__append__((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L793"
                    stdgo._internal.sort.Sort_strings.strings(_ss);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L794"
                    _ireqhdr.set(("Cookie" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_ss, ("; " : stdgo.GoString))?.__copy__());
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L800"
            if (_ireqhdr != null) for (_k => _vv in _ireqhdr) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L801"
                if (stdgo._internal.net.http.Http__shouldcopyheaderonredirect._shouldCopyHeaderOnRedirect(_k?.__copy__(), (@:checkr _preq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL, (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL)) {
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[_k] = _vv;
                };
            };
            _preq = _req;
        };
    }
    @:keep
    @:tdfield
    static public function _do( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _retres = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _reterr = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L596"
            if (stdgo._internal.net.http.Http__testhookclientdoresult._testHookClientDoResult != null) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L597"
                            stdgo._internal.net.http.Http__testhookclientdoresult._testHookClientDoResult(_retres, _reterr);
                        };
                        a();
                    }) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L599"
            if (({
                final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L600"
                _req._closeBody();
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L601"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlerrorop._urlErrorOp((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__())?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) } : stdgo._internal.net.url.Url_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) };
                        _retres = __tmp__._0;
                        _reterr = __tmp__._1;
                        __tmp__;
                    };
                    _retres = __ret__._0;
                    _reterr = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _deadline = _c._deadline()?.__copy__(), _reqs:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>), _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _copyHeaders = _c._makeHeadersCopier(_req), _reqBodyClosed = false, _redirectMethod:stdgo.GoString = ("" : stdgo.GoString), _includeBody:Bool = false;
            var _uerr = @:assignType (function(_err:stdgo.Error):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L620"
                if (!_reqBodyClosed) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L621"
                    _req._closeBody();
                };
                var _urlStr:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L624"
                if ((({
                    final value = _resp;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ({
                    final value = (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) : Bool)) {
                    _urlStr = stdgo._internal.net.http.Http__strippassword._stripPassword((@:checkr (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL)?.__copy__();
                } else {
                    _urlStr = stdgo._internal.net.http.Http__strippassword._stripPassword((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL)?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L629"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlerrorop._urlErrorOp((@:checkr _reqs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__())?.__copy__(), uRL : _urlStr?.__copy__(), err : _err } : stdgo._internal.net.url.Url_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError }));
            } : stdgo.Error -> stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L635"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L638"
                if (((_reqs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _loc = @:assignType ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L640"
                    if (_loc == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L644"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            _retres = __ret__._0;
                            _reterr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var __tmp__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L647"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L648"
                        _resp._closeBody();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L649"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse Location header %q: %v" : stdgo.GoString), new stdgo.AnyInterface(_loc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                                    final __t__ = _err;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }))) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            _retres = __ret__._0;
                            _reterr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _host = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L652"
                    if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host != (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L656"
                        {
                            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
                            if ((({
                                final value = _u;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && !_u.isAbs() : Bool)) {
                                _host = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
                            };
                        };
                    };
                    var _ireq = _reqs[(0 : stdgo.GoInt)];
                    _req = (stdgo.Go.setRef(({ method : _redirectMethod?.__copy__(), response : _resp, uRL : _u, header : (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), host : _host?.__copy__(), cancel : (@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel, _ctx : (@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx } : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L670"
                    if ((_includeBody && ((@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody != null) : Bool)) {
                        {
                            var __tmp__ = (@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody();
                            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L672"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L673"
                            _resp._closeBody();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L674"
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                                    _retres = __tmp__._0;
                                    _reterr = __tmp__._1;
                                    __tmp__;
                                };
                                _retres = __ret__._0;
                                _reterr = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (@:checkr _ireq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L683"
                    _copyHeaders(_req);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L687"
                    {
                        var _ref = @:assignType (stdgo._internal.net.http.Http__refererforurl._refererForURL((@:checkr _reqs[((_reqs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL, (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL, (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Referer" : stdgo.GoString))?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_ref != ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L688"
                            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Referer" : stdgo.GoString), _ref?.__copy__());
                        };
                    };
                    _err = _c._checkRedirect(_req, _reqs);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L695"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.net.http.Http_erruselastresponse.errUseLastResponse;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L696"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            _retres = __ret__._0;
                            _reterr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    {};
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L705"
                    if ((((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == (-1i64 : stdgo.GoInt64)) || ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength <= (2048i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L706"
                        stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, (2048i64 : stdgo.GoInt64));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L708"
                    (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.close();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L710"
                    if (_err != null) {
                        var _ue = @:assignType (_uerr(_err) : stdgo.Error);
                        (@:checkr (stdgo.Go.typeAssert(({
                            final __t__ = _ue;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>) ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL = _loc?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L717"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _ue };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            _retres = __ret__._0;
                            _reterr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                _reqs = (_reqs.__append__(_req) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>);
                var _err:stdgo.Error = (null : stdgo.Error);
                var _didTimeout:() -> Bool = null;
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L724"
                {
                    {
                        var __tmp__ = _c._send(_req, _deadline?.__copy__());
                        _resp = @:tmpset0 __tmp__._0;
                        _didTimeout = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        _reqBodyClosed = true;
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L727"
                        if ((!_deadline.isZero() && _didTimeout() : Bool)) {
                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : (_err.error() + (" (Client.Timeout exceeded while awaiting headers)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _timeout : true } : stdgo._internal.net.http.Http_t_httperror.T_httpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_httperrordott_httperror.__type__stdgodot_internaldotnetdothttpdotHttp_t_httperrordotT_httpError })) : stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_httperrordott_httperror.__type__stdgodot_internaldotnetdothttpdotHttp_t_httperrordotT_httpError }));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L733"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            _retres = __ret__._0;
                            _reterr = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                var _shouldRedirect:Bool = false;
                {
                    var __tmp__ = stdgo._internal.net.http.Http__redirectbehavior._redirectBehavior((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), _resp, _reqs[(0 : stdgo.GoInt)]);
                    _redirectMethod = @:tmpset0 __tmp__._0?.__copy__();
                    _shouldRedirect = @:tmpset0 __tmp__._1;
                    _includeBody = @:tmpset0 __tmp__._2;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L738"
                if (!_shouldRedirect) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L739"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                            _retres = __tmp__._0;
                            _reterr = __tmp__._1;
                            __tmp__;
                        };
                        _retres = __ret__._0;
                        _reterr = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L742"
                _req._closeBody();
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
                return { _0 : _retres, _1 : _reterr };
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
                return { _0 : _retres, _1 : _reterr };
            };
        };
    }
    @:keep
    @:tdfield
    static public function do_( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L590"
        return _c._do(_req);
    }
    @:keep
    @:tdfield
    static public function _checkRedirect( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _fn = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).checkRedirect;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L503"
        if (_fn == null) {
            _fn = stdgo._internal.net.http.Http__defaultcheckredirect._defaultCheckRedirect;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L506"
        return _fn(_req, _via);
    }
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newrequest.newRequest(("GET" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L485"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L486"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L488"
        return ({
            @:explicitConversion final __tmp__ = _c.do_(_req);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function _transport( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):stdgo._internal.net.http.Http_roundtripper.RoundTripper {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L201"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transport != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L202"
            return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transport;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L204"
        return stdgo._internal.net.http.Http_defaulttransport.defaultTransport;
    }
    @:keep
    @:tdfield
    static public function _deadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):stdgo._internal.time.Time_time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L194"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L195"
            return stdgo._internal.time.Time_now.now().add((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L197"
        return (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
    }
    @:keep
    @:tdfield
    static public function _send( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _deadline:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L176"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L177"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar.cookies((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL) != null) for (__12 => _cookie in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar.cookies((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L178"
                _req.addCookie(_cookie);
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__send._send(_req, _c._transport(), _deadline?.__copy__());
            _resp = @:tmpset0 __tmp__._0;
            _didTimeout = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L182"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L183"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : _err };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L185"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L186"
            {
                var _rc = _resp.cookies();
                if (((_rc.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L187"
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).jar.setCookies((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL, _rc);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L190"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _didTimeout = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
}
