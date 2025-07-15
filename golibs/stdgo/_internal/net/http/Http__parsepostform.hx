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
function _parsePostForm(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo._internal.net.url.Url_values.Values; var _1 : stdgo.Error; } {
        var _vs = (null : stdgo._internal.net.url.Url_values.Values), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1218"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
            _err = stdgo._internal.errors.Errors_new_.new_(("missing form body" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1220"
            return { _0 : _vs, _1 : _err };
        };
        var _ct = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Type" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1225"
        if (_ct == ((stdgo.Go.str() : stdgo.GoString))) {
            _ct = ("application/octet-stream" : stdgo.GoString);
        };
        {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_ct?.__copy__());
            _ct = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1229"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (_ct == (("application/x-www-form-urlencoded" : stdgo.GoString))) {
                    var _reader:stdgo._internal.io.Io_reader.Reader = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                    var _maxFormSize = @:assignType ((9223372036854775807i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1233"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maxbytesreaderdott_maxbytesreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_maxbytesreaderdotT_maxBytesReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>), _1 : false };
                        }, __12 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _maxFormSize = (10485760i64 : stdgo.GoInt64);
                            _reader = stdgo._internal.io.Io_limitreader.limitReader((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, (_maxFormSize + (1i64 : stdgo.GoInt64) : stdgo.GoInt64));
                        };
                    };
                    var __tmp__ = stdgo._internal.io.Io_readall.readAll(_reader), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1238"
                    if (_e != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1239"
                        if (_err == null) {
                            _err = _e;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1242"
                        break;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1244"
                    if (((_b.length : stdgo.GoInt64) > _maxFormSize : Bool)) {
                        _err = stdgo._internal.errors.Errors_new_.new_(("http: POST too large" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1246"
                        return { _0 : _vs, _1 : _err };
                    };
                    {
                        var __tmp__ = stdgo._internal.net.url.Url_parsequery.parseQuery((_b : stdgo.GoString)?.__copy__());
                        _vs = @:tmpset0 __tmp__._0;
                        _e = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1249"
                    if (_err == null) {
                        _err = _e;
                    };
                    break;
                } else if (_ct == (("multipart/form-data" : stdgo.GoString))) {
                    break;
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1260"
        return { _0 : _vs, _1 : _err };
    }
