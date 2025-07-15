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
function _http2parseContinuationFrame(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2645"
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2646"
            _countError(("frame_continuation_zero_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2647"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2connerror.T_http2connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("CONTINUATION frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connerrordott_http2connerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connerrordotT_http2connError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2649"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame(_fh?.__copy__(), _p) : stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2continuationframedott_http2continuationframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2continuationframedotT_http2ContinuationFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2continuationframedott_http2continuationframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2continuationframedotT_http2ContinuationFrame })), _1 : (null : stdgo.Error) };
    }
