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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2responseWriterState_asInterface) class T_http2responseWriterState_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeader( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>, _code:stdgo.GoInt):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6729"
        if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6730"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6733"
        stdgo._internal.net.http.Http__http2checkwriteheadercode._http2checkWriteHeaderCode(_code);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6736"
        if (((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            var _h = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader : stdgo._internal.net.http.Http_header.Header);
            var __tmp__ = (_h != null && _h.__exists__(("Content-Length" : stdgo.GoString)) ? { _0 : _h[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _cl:Bool = __tmp__._1;
            var __tmp__ = (_h != null && _h.__exists__(("Transfer-Encoding" : stdgo.GoString)) ? { _0 : _h[("Transfer-Encoding" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _te:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6742"
            if ((_cl || _te : Bool)) {
                _h = _h.clone();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6744"
                _h.del(("Content-Length" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6745"
                _h.del(("Transfer-Encoding" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6748"
            if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._writeHeaders((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _httpResCode : _code, _h : _h, _endStream : ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone && !_rws._hasTrailers() : Bool) } : stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>)) != null) {
                (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirty = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6757"
            return;
        };
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader = true;
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status = _code;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6762"
        if ((((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader = stdgo._internal.net.http.Http__http2cloneheader._http2cloneHeader((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader);
        };
    }
    @:keep
    @:tdfield
    static public function _promoteUndeclaredTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6575"
        if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader != null) for (_k => _vv in (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6576"
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6577"
                continue;
            };
            var _trailerKey = @:assignType (stdgo._internal.strings.Strings_trimprefix.trimPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6580"
            _rws._declareTrailer(_trailerKey?.__copy__());
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader[stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_trailerKey?.__copy__())] = _vv;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6584"
        if ((((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers.length) > (1 : stdgo.GoInt) : Bool)) {
            var _sorter = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2sorterpool._http2sorterPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6586"
            _sorter.sortStrings((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6587"
            stdgo._internal.net.http.Http__http2sorterpool._http2sorterPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_sorter, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter }))));
        };
    }
    @:keep
    @:tdfield
    static public function _writeChunk( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6431"
        if (!(@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6432"
            _rws._writeHeader((200 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6435"
        if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6436"
            _rws._promoteUndeclaredTrailers();
        };
        var _isHeadResp = @:assignType ((@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("HEAD" : stdgo.GoString)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6440"
        if (!(@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentHeader) {
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentHeader = true;
            var _ctype:stdgo.GoString = ("" : stdgo.GoString), _clen:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6443"
            {
                _clen = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.get(("Content-Length" : stdgo.GoString))?.__copy__();
                if (_clen != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6444"
                    (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.del(("Content-Length" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6445"
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_clen?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sentContentLen = (_cl : stdgo.GoInt64);
                        } else {
                            _clen = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        };
                    };
                };
            };
            var __tmp__ = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader != null && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.__exists__(("Content-Length" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentLength:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6452"
            if (((((!_hasContentLength && _clen == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone : Bool) && stdgo._internal.net.http.Http__http2bodyallowedforstatus._http2bodyAllowedForStatus((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status) : Bool) && ((((_p.length) > (0 : stdgo.GoInt) : Bool) || !_isHeadResp : Bool)) : Bool)) {
                _clen = stdgo._internal.strconv.Strconv_itoa.itoa((_p.length))?.__copy__();
            };
            var __tmp__ = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader != null && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _hasContentType:Bool = __tmp__._1;
            var _ce = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = @:assignType ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6460"
            if ((((!_hasCE && !_hasContentType : Bool) && stdgo._internal.net.http.Http__http2bodyallowedforstatus._http2bodyAllowedForStatus((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status) : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _ctype = stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_p)?.__copy__();
            };
            var _date:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6464"
            {
                var __tmp__ = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader != null && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.__exists__(("Date" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Date" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __14:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _date = stdgo._internal.time.Time_now.now().uTC().format(("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString))?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6469"
            if (((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__15 => _v in ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6470"
                stdgo._internal.net.http.Http__http2foreachheaderelement._http2foreachHeaderElement(_v?.__copy__(), _rws._declareTrailer);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6478"
            {
                var __tmp__ = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader != null && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.__exists__(("Connection" : stdgo.GoString)) ? { _0 : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __16:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _v = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.get(("Connection" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6480"
                    if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader != null) (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader.__remove__(("Connection" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6481"
                    if (_v == (("close" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6482"
                        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._startGracefulShutdown();
                    };
                };
            };
            var _endStream = @:assignType (((((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone && !_rws._hasTrailers() : Bool) && (_p.length == (0 : stdgo.GoInt)) : Bool)) || _isHeadResp : Bool);
            _err = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._writeHeaders((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _httpResCode : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status, _h : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._snapHeader, _endStream : _endStream, _contentType : _ctype?.__copy__(), _contentLength : _clen?.__copy__(), _date : _date?.__copy__() } : stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6496"
            if (_err != null) {
                (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirty = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6498"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6500"
            if (_endStream) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6501"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6504"
        if (_isHeadResp) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6505"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6507"
        if (((_p.length == (0 : stdgo.GoInt)) && !(@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6508"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _hasNonemptyTrailers = @:assignType (_rws._hasNonemptyTrailers() : Bool);
        var _endStream = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone && !_hasNonemptyTrailers : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6515"
        if ((((_p.length) > (0 : stdgo.GoInt) : Bool) || _endStream : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6517"
            {
                var _err = @:assignType ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._writeDataFromHandler((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream, _p, _endStream) : stdgo.Error);
                if (_err != null) {
                    (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirty = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6519"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6523"
        if (((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone && _hasNonemptyTrailers : Bool)) {
            _err = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._writeHeaders((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream, (stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _h : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader, _trailers : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers, _endStream : true } : stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6530"
            if (_err != null) {
                (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirty = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6533"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6535"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _declareTrailer( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>, _k:stdgo.GoString):Void {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        _k = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6414"
        if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_k?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6416"
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._logf(("ignoring invalid trailer %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6417"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6419"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers, _k?.__copy__())) {
            (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
    }
    @:keep
    @:tdfield
    static public function _hasNonemptyTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6401"
        if ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers != null) for (__12 => _trailer in (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6402"
            {
                var __tmp__ = ((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader != null && (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.__exists__(_trailer?.__copy__()) ? { _0 : (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader[_trailer?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6403"
                    return true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6406"
        return false;
    }
    @:keep
    @:tdfield
    static public function _hasTrailers( _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>):Bool {
        @:recv var _rws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState> = _rws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6398"
        return (((@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers.length) > (0 : stdgo.GoInt) : Bool);
    }
}
