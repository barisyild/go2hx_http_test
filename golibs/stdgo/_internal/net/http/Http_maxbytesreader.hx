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
function maxBytesReader(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo._internal.io.Io_readcloser.ReadCloser, _n:stdgo.GoInt64):stdgo._internal.io.Io_readcloser.ReadCloser {
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1141"
        if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
            _n = (0i64 : stdgo.GoInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1144"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w, _r : _r, _i : _n, _n : _n } : stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maxbytesreaderdott_maxbytesreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_maxbytesreaderdotT_maxBytesReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_maxbytesreaderdott_maxbytesreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_maxbytesreaderdotT_maxBytesReader }));
    }
