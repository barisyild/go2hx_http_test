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
@:keep @:allow(stdgo._internal.net.http.Http.Request_asInterface) class Request_static_extension {
    @:keep
    @:tdfield
    static public function _requiresHTTP1( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1486"
        return (stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Connection" : stdgo.GoString))?.__copy__(), ("upgrade" : stdgo.GoString)) && stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Upgrade" : stdgo.GoString))?.__copy__(), ("websocket" : stdgo.GoString)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _outgoingLength( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1459"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) || (({
            final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody))) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1460"
            return (0i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1462"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != ((0i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1463"
            return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1465"
        return (-1i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _isReplayable( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1441"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null || ({
            final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody))) : Bool) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1442"
            {
                final __value__ = stdgo._internal.net.http.Http__valueordefault._valueOrDefault((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), ("GET" : stdgo.GoString));
                if (__value__ == (("GET" : stdgo.GoString)) || __value__ == (("HEAD" : stdgo.GoString)) || __value__ == (("OPTIONS" : stdgo.GoString)) || __value__ == (("TRACE" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1444"
                    return true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1449"
            if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._has(("Idempotency-Key" : stdgo.GoString)) || (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._has(("X-Idempotency-Key" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1450"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1453"
        return false;
    }
    @:keep
    @:tdfield
    static public function _closeBody( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1434"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1435"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1437"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.close();
    }
    @:keep
    @:tdfield
    static public function _wantsClose( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1427"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1428"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1430"
        return stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _wantsHttp10KeepAlive( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1420"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor != (1 : stdgo.GoInt)) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1421"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1423"
        return stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Connection" : stdgo.GoString))?.__copy__(), ("keep-alive" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _expectsContinue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1416"
        return stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Expect" : stdgo.GoString))?.__copy__(), ("100-continue" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function formFile( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1397"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1398"
            return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1400"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
            (value == null || (value : Dynamic).__nil__);
        })) {
            var _err = @:assignType (_r.parseMultipartForm((33554432i64 : stdgo.GoInt64)) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1402"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1403"
                return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1406"
        if ((({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1407"
            {
                var _fhs = ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm ?? throw stdgo.Error._nullPointerDereference.__underlying__()).file[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>>));
                if (((_fhs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = _fhs[(0 : stdgo.GoInt)].open(), _f:stdgo._internal.mime.multipart.Multipart_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1409"
                    return { _0 : _f, _1 : _fhs[(0 : stdgo.GoInt)], _2 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1412"
        return { _0 : (null : stdgo._internal.mime.multipart.Multipart_file.File), _1 : null, _2 : stdgo._internal.net.http.Http_errmissingfile.errMissingFile };
    }
    @:keep
    @:tdfield
    static public function postFormValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1385"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1386"
            _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1388"
        {
            var _vs = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1389"
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1391"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function formValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1370"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1371"
            _r.parseMultipartForm((33554432i64 : stdgo.GoInt64));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1373"
        {
            var _vs = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_vs.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1374"
                return _vs[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1376"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function parseMultipartForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _maxMemory:stdgo.GoInt64):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1325"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1326"
            return stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by MultipartReader" : stdgo.GoString));
        };
        var _parseFormErr:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1329"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form == null) {
            _parseFormErr = _r.parseForm();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1334"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1335"
            return (null : stdgo.Error);
        };
        var __tmp__ = _r._multipartReader(false), _mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1339"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1340"
            return _err;
        };
        var __tmp__ = _mr.readForm(_maxMemory), _f:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1344"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1345"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1348"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm == null) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1351"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value != null) for (_k => _v in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form[_k] = (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm[_k] = (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_v : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1359"
        return _parseFormErr;
    }
    @:keep
    @:tdfield
    static public function parseForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1283"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1284"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("POST" : stdgo.GoString)) || (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("PUT" : stdgo.GoString)) : Bool) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("PATCH" : stdgo.GoString)) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__parsepostform._parsePostForm(_r);
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1287"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm == null) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1291"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1292"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1294"
                stdgo._internal.net.http.Http__copyvalues._copyValues((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm);
            };
            var _newValues:stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1297"
            if (({
                final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _e:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery?.__copy__());
                    _newValues = @:tmpset0 __tmp__._0;
                    _e = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1300"
                if (_err == null) {
                    _err = _e;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1304"
            if (_newValues == null) {
                _newValues = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1307"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form == null) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form = _newValues;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1310"
                stdgo._internal.net.http.Http__copyvalues._copyValues((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form, _newValues);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1313"
        return _err;
    }
    @:keep
    @:tdfield
    static public function setBasicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _username:stdgo.GoString, _password:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L988"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicauth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function basicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        var _auth = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Authorization" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L950"
        if (_auth == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L951"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L953"
        return stdgo._internal.net.http.Http__parsebasicauth._parseBasicAuth(_auth?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _write( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_header.Header, _waitForContinue:() -> Bool):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_r.context());
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L562"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteRequest != null) : Bool)) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L564"
                            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteRequest(({ err : _err } : stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo));
                        };
                        a();
                    }) });
                };
            };
            var _closed = @:assignType (false : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L571"
                        if (_closed) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L572"
                            return;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L574"
                        {
                            var _closeErr = @:assignType (_r._closeBody() : stdgo.Error);
                            if (((_closeErr != null) && (_err == null) : Bool)) {
                                _err = _closeErr;
                            };
                        };
                    };
                    a();
                }) });
            };
            var _host = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L584"
            if (_host == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L585"
                if (({
                    final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L586"
                    {
                        final __ret__:stdgo.Error = _err = stdgo._internal.net.http.Http__errmissinghost._errMissingHost;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _host = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
            };
            {
                var __tmp__ = _internal.golangdotorg.x.net.http.httpguts.Httpguts_punycodehostport.punycodeHostPort(_host?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L591"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L592"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L599"
            if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validhostheader.validHostHeader(_host?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L612"
                if (!_usingProxy) {
                    _host = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L615"
                    {
                        final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("http: invalid Host header" : stdgo.GoString));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            _host = stdgo._internal.net.http.Http__removezone._removeZone(_host?.__copy__())?.__copy__();
            var _ruri = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL.requestURI()?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L625"
            if (((_usingProxy && (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _ruri = ((((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme + ("://" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _host?.__copy__() : stdgo.GoString) + _ruri?.__copy__() : stdgo.GoString)?.__copy__();
            } else if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("CONNECT" : stdgo.GoString)) && ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _ruri = _host?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L630"
                if ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque != ((stdgo.Go.str() : stdgo.GoString))) {
                    _ruri = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L634"
            if (stdgo._internal.net.http.Http__stringcontainsctlbyte._stringContainsCTLByte(_ruri?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L635"
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.errors.Errors_new_.new_(("net/http: can\'t write control character in Request.URL" : stdgo.GoString));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L646"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _w;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_bytewriterdotbytewriter.__type__stdgodot_internaldotiodotIo_bytewriterdotByteWriter) : stdgo._internal.io.Io_bytewriter.ByteWriter), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.io.Io_bytewriter.ByteWriter), _1 : false };
                }, __12 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _bw = stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
                    _w = stdgo.Go.asInterface(_bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }));
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s %s HTTP/1.1\r\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.net.http.Http__valueordefault._valueOrDefault((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), ("GET" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ruri, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L652"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L653"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("Host: %s\r\n" : stdgo.GoString), new stdgo.AnyInterface(_host, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L658"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L659"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L661"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L662"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("Host" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_host?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
            var _userAgent = @:assignType (("Go-http-client/1.1" : stdgo.GoString) : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L668"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._has(("User-Agent" : stdgo.GoString))) {
                _userAgent = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("User-Agent" : stdgo.GoString))?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L671"
            if (_userAgent != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("User-Agent: %s\r\n" : stdgo.GoString), new stdgo.AnyInterface(_userAgent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L673"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L674"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L676"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L677"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("User-Agent" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_userAgent?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
                };
            };
            var __tmp__ = stdgo._internal.net.http.Http__newtransferwriter._newTransferWriter(new stdgo.AnyInterface(stdgo.Go.asInterface(_r, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L683"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L684"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            _err = _tw._writeHeader(_w, _trace);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L687"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L688"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            _err = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._writeSubset(_w, stdgo._internal.net.http.Http__reqwriteexcludeheader._reqWriteExcludeHeader, _trace);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L692"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L693"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L696"
            if (_extraHeaders != null) {
                _err = _extraHeaders._write(_w, _trace);
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L698"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L699"
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
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("\r\n" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L704"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L705"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L708"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaders != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L709"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaders();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L713"
            if (_waitForContinue != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L714"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _w;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : false };
                    }, _bw = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _bw.flush();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L716"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L717"
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
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L720"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wait100Continue != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L721"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wait100Continue();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L723"
                if (!_waitForContinue()) {
                    _closed = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L725"
                    _r._closeBody();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L726"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L730"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _w;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : false };
                }, _bw = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flushHeaders : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L731"
                    {
                        var _err = @:assignType (_bw.flush() : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L732"
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
                };
            };
            _closed = true;
            _err = _tw._writeBody(_w);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L739"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L740"
                if (({
                    final __t__ = (@:checkr _tw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyReadError;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError(_err) : stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_requestbodyreaderrordott_requestbodyreaderror.__type__stdgodot_internaldotnetdothttpdotHttp_t_requestbodyreaderrordotT_requestBodyReadError);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L743"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L746"
            if (({
                final value = _bw;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L747"
                {
                    final __ret__:stdgo.Error = _err = _bw.flush();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L749"
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
    static public function writeProxy( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L550"
        return _r._write(_w, true, null, null);
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L540"
        return _r._write(_w, false, null, null);
    }
    @:keep
    @:tdfield
    static public function _isH2Upgrade( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L508"
        return ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("PRI" : stdgo.GoString)) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.length) == ((0 : stdgo.GoInt)) : Bool) && (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path == (("*" : stdgo.GoString)) : Bool) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto == ("HTTP/2.0" : stdgo.GoString)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _allowMixed:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _v = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L488"
        if (_v == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L489"
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L491"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L492"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("missing form body" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_v?.__copy__()), _d:stdgo.GoString = __tmp__._0, _params:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L495"
        if (((_err != null) || !(((_d == ("multipart/form-data" : stdgo.GoString)) || (_allowMixed && _d == (("multipart/mixed" : stdgo.GoString)) : Bool) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L496"
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError })) };
        };
        var __tmp__ = (_params != null && _params.__exists__(("boundary" : stdgo.GoString)) ? { _0 : _params[("boundary" : stdgo.GoString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _boundary:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L499"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L500"
            return { _0 : null, _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errmissingboundary.errMissingBoundary, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L502"
        return { _0 : stdgo._internal.mime.multipart.Multipart_newreader.newReader((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _boundary?.__copy__()), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L476"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm == (stdgo._internal.net.http.Http__multipartbyreader._multipartByReader)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L477"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: MultipartReader called twice" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L479"
        if (({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L480"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: multipart handled by ParseMultipartForm" : stdgo.GoString)) };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm = stdgo._internal.net.http.Http__multipartbyreader._multipartByReader;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L483"
        return _r._multipartReader(true);
    }
    @:keep
    @:tdfield
    static public function referer( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L460"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Referer" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function addCookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.net.http.Http__sanitizecookiename._sanitizeCookieName((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http__sanitizecookievalue._sanitizeCookieValue((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L444"
        {
            var _c = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Cookie" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_c != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L445"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Cookie" : stdgo.GoString), ((_c + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__());
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L447"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.set(("Cookie" : stdgo.GoString), _s?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function cookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L427"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L428"
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errnocookie.errNoCookie };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L430"
        if (stdgo._internal.net.http.Http__readcookies._readCookies((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, _name?.__copy__()) != null) for (__12 => _c in stdgo._internal.net.http.Http__readcookies._readCookies((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, _name?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L431"
            return { _0 : _c, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L433"
        return { _0 : null, _1 : stdgo._internal.net.http.Http_errnocookie.errNoCookie };
    }
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L416"
        return stdgo._internal.net.http.Http__readcookies._readCookies((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function userAgent( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L411"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("User-Agent" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L405"
        return (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor > _major : Bool) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor == (_major) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function clone( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L378"
        if (_ctx == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L379"
            throw new stdgo.AnyInterface(("nil context" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_request.Request);
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
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx = _ctx;
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL = stdgo._internal.net.http.Http__cloneurl._cloneURL((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L385"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) {
            (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.clone();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L388"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer != null) {
            (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer.clone();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L391"
        {
            var _s = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding;
            if (_s != null) {
                var _s2 = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L393"
                _s2.__copyTo__(_s);
                (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = _s2;
            };
        };
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form = stdgo._internal.net.http.Http__cloneurlvalues._cloneURLValues((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).form);
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm = stdgo._internal.net.http.Http__cloneurlvalues._cloneURLValues((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).postForm);
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm = stdgo._internal.net.http.Http__clonemultipartform._cloneMultipartForm((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L399"
        return _r2;
    }
    @:keep
    @:tdfield
    static public function withContext( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L362"
        if (_ctx == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L363"
            throw new stdgo.AnyInterface(("nil context" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _r2 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_request.Request)?.__copy__();
            var x = (_r2 : stdgo._internal.net.http.Http_request.Request);
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
        (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx = _ctx;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L368"
        return _r2;
    }
    @:keep
    @:tdfield
    static public function context( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.context.Context_context.Context {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L346"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L347"
            return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L349"
        return stdgo._internal.context.Context_background.background();
    }
}
