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
function _checkIfRange(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _modtime:stdgo._internal.time.Time_time.Time):stdgo._internal.net.http.Http_t_condresult.T_condResult {
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L508"
        if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("GET" : stdgo.GoString)) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("HEAD" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L509"
            return (0 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        var _ir = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("If-Range" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L512"
        if (_ir == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L513"
            return (0 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http__scanetag._scanETag(_ir?.__copy__()), _etag:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L516"
        if (_etag != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L517"
            if (stdgo._internal.net.http.Http__etagstrongmatch._etagStrongMatch(_etag?.__copy__(), _w.header().get(("Etag" : stdgo.GoString))?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L518"
                return (1 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L520"
                return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L525"
        if (_modtime.isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L526"
            return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        var __tmp__ = stdgo._internal.net.http.Http_parsetime.parseTime(_ir?.__copy__()), _t:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L529"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L530"
            return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L532"
        if (_t.unix() == (_modtime.unix())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L533"
            return (1 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L535"
        return (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult);
    }
