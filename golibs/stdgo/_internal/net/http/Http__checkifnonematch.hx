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
function _checkIfNoneMatch(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.net.http.Http_t_condresult.T_condResult {
        var _inm = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("If-None-Match" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L458"
        if (_inm == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L459"
            return (0 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        var _buf = @:assignType (_inm?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L462"
        while (true) {
            _buf = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_buf?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L464"
            if ((_buf.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L465"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L467"
            if (_buf[(0 : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L469"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L471"
            if (_buf[(0 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L472"
                return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
            };
            var __tmp__ = stdgo._internal.net.http.Http__scanetag._scanETag(_buf?.__copy__()), _etag:stdgo.GoString = __tmp__._0, _remain:stdgo.GoString = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L475"
            if (_etag == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L476"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L478"
            if (stdgo._internal.net.http.Http__etagweakmatch._etagWeakMatch(_etag?.__copy__(), _w.header()._get(("Etag" : stdgo.GoString))?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L479"
                return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
            };
            _buf = _remain?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L483"
        return (1 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
    }
