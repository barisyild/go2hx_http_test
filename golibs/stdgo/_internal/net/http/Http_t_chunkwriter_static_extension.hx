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
@:keep @:allow(stdgo._internal.net.http.Http.T_chunkWriter_asInterface) class T_chunkWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeader( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter> = _cw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1255"
        if ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1256"
            return;
        };
        (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader = true;
        var _w = (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res;
        var _keepAlivesEnabled = @:assignType ((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._doKeepAlives() : Bool);
        var _isHEAD = @:assignType ((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("HEAD" : stdgo.GoString)) : Bool);
        var _header = @:assignType ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header : stdgo._internal.net.http.Http_header.Header);
        var _owned = @:assignType (_header != null : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1271"
        if (!_owned) {
            _header = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader;
        };
        var _excludeHeader:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _delHeader = @:assignType (function(_key:stdgo.GoString):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1276"
            if (_owned) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1277"
                _header.del(_key?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1278"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1280"
            {
                var __tmp__ = (_header != null && _header.__exists__(_key?.__copy__()) ? { _0 : _header[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1281"
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1283"
            if (_excludeHeader == null) {
                _excludeHeader = (({
                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                    x.__defaultValue__ = () -> false;
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
            };
            _excludeHeader[_key] = true;
        } : stdgo.GoString -> Void);
        var _setHeader:stdgo._internal.net.http.Http_t_extraheader.T_extraHeader = ({} : stdgo._internal.net.http.Http_t_extraheader.T_extraHeader);
        var _trailers = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1292"
        if ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header != null) for (_k => _ in (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1293"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1294"
                if (_excludeHeader == null) {
                    _excludeHeader = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                };
                _excludeHeader[_k] = true;
                _trailers = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1301"
        if (((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__12 => _v in ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            _trailers = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1303"
            stdgo._internal.net.http.Http__foreachheaderelement._foreachHeaderElement(_v?.__copy__(), (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res._declareTrailer);
        };
        var _te = @:assignType (_header._get(("Transfer-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _hasTE = @:assignType (_te != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1323"
        if (((((((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone.load() && !_trailers : Bool) && !_hasTE : Bool) && stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status) : Bool) && !_header._has(("Content-Length" : stdgo.GoString)) : Bool) && ((!_isHEAD || ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength = (_p.length : stdgo.GoInt64);
            _setHeader._contentLength = stdgo._internal.strconv.Strconv_appendint.appendInt(((@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clenBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_p.length : stdgo.GoInt64), (10 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1330"
        if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wants10KeepAlive && _keepAlivesEnabled : Bool)) {
            var _sentLength = @:assignType (_header._get(("Content-Length" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1332"
            if ((_sentLength && (_header._get(("Connection" : stdgo.GoString)) == ("keep-alive" : stdgo.GoString)) : Bool)) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = false;
            };
        };
        var _hasCL = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1340"
        if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wants10KeepAlive && (((_isHEAD || _hasCL : Bool) || !stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status) : Bool)) : Bool)) {
            var __tmp__ = (_header != null && _header.__exists__(("Connection" : stdgo.GoString)) ? { _0 : _header[("Connection" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _connectionHeaderSet:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1342"
            if (!_connectionHeaderSet) {
                _setHeader._connection = ("keep-alive" : stdgo.GoString);
            };
        } else if ((!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) || (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantsClose : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1349"
        if (((_header._get(("Connection" : stdgo.GoString)) == ("close" : stdgo.GoString)) || !_keepAlivesEnabled : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1365"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_expectcontinuereaderdott_expectcontinuereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_expectcontinuereaderdotT_expectContinueReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>), _1 : false };
            }, _ecr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && !(@:checkr _ecr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF.load() : Bool)) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1376"
        if ((((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != ((0i64 : stdgo.GoInt64)) && !(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply : Bool) && !(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fullDuplex : Bool)) {
            var _discard:Bool = false, _tooBig:Bool = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1379"
            {
                final __type__ = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_expectcontinuereaderdott_expectcontinuereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_expectcontinuereaderdotT_expectContinueReader }))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1381"
                    if ((@:checkr (@:checkr _bdy ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteContinue) {
                        _discard = true;
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body }))) {
                    var _bdy:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1385"
                    (@:checkr _bdy ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1386"
                    if ((@:checkr _bdy ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1388"
                        if (!(@:checkr _bdy ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF) {
                            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
                        };
                    } else if ((_bdy._unreadDataSizeLocked() >= (262144i64 : stdgo.GoInt64) : Bool)) {
                        _tooBig = true;
                    } else {
                        _discard = true;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1397"
                    (@:checkr _bdy ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                } else {
                    var _bdy:stdgo._internal.io.Io_readcloser.ReadCloser = __type__ == null ? (null : stdgo._internal.io.Io_readcloser.ReadCloser) : cast __type__;
                    _discard = true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1402"
            if (_discard) {
                var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody, (262145i64 : stdgo.GoInt64)), __13:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1404"
                {
                    final __value__ = _err;
                    if (__value__ == null) {
                        _tooBig = true;
                    } else if (({
                        final __t__ = __value__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {} else if (({
                        final __t__ = __value__;
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
                        _err = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1413"
                        if (_err != null) {
                            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
                        };
                    } else {
                        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1424"
            if (_tooBig) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1425"
                _w._requestTooLarge();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1426"
                _delHeader(("Connection" : stdgo.GoString));
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        var _code = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1432"
        if (stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus(_code)) {
            var __tmp__ = (_header != null && _header.__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : _header[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveType:Bool = __tmp__._1;
            var _ce = @:assignType (_header.get(("Content-Encoding" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _hasCE = @:assignType ((_ce.length) > (0 : stdgo.GoInt) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1440"
            if ((((!_hasCE && !_haveType : Bool) && !_hasTE : Bool) && ((_p.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _setHeader._contentType = stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_p)?.__copy__();
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1444"
            if (stdgo._internal.net.http.Http__suppressedheaders._suppressedHeaders(_code) != null) for (__13 => _k in stdgo._internal.net.http.Http__suppressedheaders._suppressedHeaders(_code)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1445"
                _delHeader(_k?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1449"
        if (!_header._has(("Date" : stdgo.GoString))) {
            _setHeader._date = stdgo._internal.net.http.Http__appendtime._appendTime(((@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dateBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.time.Time_now.now()?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1453"
        if (((_hasCL && _hasTE : Bool) && (_te != ("identity" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1456"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: WriteHeader called with both Transfer-Encoding of %q and a Content-Length of %d" : stdgo.GoString), new stdgo.AnyInterface(_te, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1458"
            _delHeader(("Content-Length" : stdgo.GoString));
            _hasCL = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1462"
        if ((((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("HEAD" : stdgo.GoString)) || !stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus(_code) : Bool) || (_code == (204 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1464"
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if (_hasCL) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1467"
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        } else if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1474"
            if ((_hasTE && (_te == ("identity" : stdgo.GoString)) : Bool)) {
                (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking = false;
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1477"
                _delHeader(("Transfer-Encoding" : stdgo.GoString));
            } else {
                (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking = true;
                _setHeader._transferEncoding = ("chunked" : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1483"
                if ((_hasTE && (_te == ("chunked" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1485"
                    _delHeader(("Transfer-Encoding" : stdgo.GoString));
                };
            };
        } else {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1493"
            _delHeader(("Transfer-Encoding" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1497"
        if ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1498"
            _delHeader(("Content-Length" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1500"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1501"
            return;
        };
        var _delConnectionHeader = @:assignType (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply && ((!_keepAlivesEnabled || !stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString)) : Bool)) : Bool) && !stdgo._internal.net.http.Http__isprotocolswitchresponse._isProtocolSwitchResponse((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status, _header) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1510"
        if (_delConnectionHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1511"
            _delHeader(("Connection" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1512"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
                _setHeader._connection = ("close" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1517"
        stdgo._internal.net.http.Http__writestatusline._writeStatusLine((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1518"
        (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header.writeSubset(stdgo.Go.asInterface((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), _excludeHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1519"
        _setHeader.write((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1520"
        (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
    }
    @:keep
    @:tdfield
    static public function _close( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>):Void {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter> = _cw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L406"
        if (!(@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L407"
            _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L409"
        if ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking) {
            var _bw = (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L412"
            _bw.writeString(("0\r\n" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L413"
            {
                var _trailers = @:assignType ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res._finalTrailers() : stdgo._internal.net.http.Http_header.Header);
                if (_trailers != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L414"
                    _trailers.write(stdgo.Go.asInterface(_bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L418"
            _bw.writeString(("\r\n" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _flush( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>):stdgo.Error {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter> = _cw;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L399"
        if (!(@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L400"
            _cw._writeHeader((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L402"
        return (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.flush();
    }
    @:keep
    @:tdfield
    static public function write( _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cw:stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter> = _cw;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L374"
        if (!(@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L375"
            _cw._writeHeader(_p);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L377"
        if ((@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("HEAD" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L379"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L381"
        if ((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking) {
            {
                var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), ("%x\r\n" : stdgo.GoString), new stdgo.AnyInterface((_p.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L383"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L384"
                (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L385"
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L389"
        if (((@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunking && (_err == null) : Bool)) {
            {
                var __tmp__ = (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L392"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L393"
            (@:checkr (@:checkr (@:checkr _cw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.close();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L395"
        return { _0 : _n, _1 : _err };
    }
}
