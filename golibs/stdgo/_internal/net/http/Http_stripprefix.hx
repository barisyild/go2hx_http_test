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
function stripPrefix(_prefix:stdgo.GoString, _h:stdgo._internal.net.http.Http_handler.Handler):stdgo._internal.net.http.Http_handler.Handler {
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2166"
        if (_prefix == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2167"
            return _h;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2169"
        return stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
            var _p = @:assignType (stdgo._internal.strings.Strings_trimprefix.trimPrefix((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__(), _prefix?.__copy__())?.__copy__() : stdgo.GoString);
            var _rp = @:assignType (stdgo._internal.strings.Strings_trimprefix.trimPrefix((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath?.__copy__(), _prefix?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2172"
            if ((((_p.length) < ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path.length) : Bool) && ((((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath == (stdgo.Go.str() : stdgo.GoString)) || ((_rp.length) < ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath.length) : Bool) : Bool)) : Bool)) {
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
                (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
                {
                    var __tmp__ = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL : stdgo._internal.net.url.Url_url.URL)?.__copy__();
                    var x = ((@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL : stdgo._internal.net.url.Url_url.URL);
                    x.scheme = __tmp__?.scheme;
                    x.opaque = __tmp__?.opaque;
                    x.user = __tmp__?.user;
                    x.host = __tmp__?.host;
                    x.path = __tmp__?.path;
                    x.rawPath = __tmp__?.rawPath;
                    x.omitHost = __tmp__?.omitHost;
                    x.forceQuery = __tmp__?.forceQuery;
                    x.rawQuery = __tmp__?.rawQuery;
                    x.fragment = __tmp__?.fragment;
                    x.rawFragment = __tmp__?.rawFragment;
                };
                (@:checkr (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path = _p?.__copy__();
                (@:checkr (@:checkr _r2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawPath = _rp?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2179"
                _h.serveHTTP(_w, _r2);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2181"
                stdgo._internal.net.http.Http_notfound.notFound(_w, _r);
            };
        } : stdgo._internal.net.http.Http_handlerfunc.HandlerFunc), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerfuncdothandlerfunc.__type__stdgodot_internaldotnetdothttpdotHttp_handlerfuncdotHandlerFunc);
    }
