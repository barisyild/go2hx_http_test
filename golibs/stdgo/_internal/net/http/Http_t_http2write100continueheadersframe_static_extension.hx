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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2write100ContinueHeadersFrame_asInterface) class T_http2write100ContinueHeadersFrame_static_extension {
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame = _w?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10572"
        return ((29 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame, _ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame = _w?.__copy__();
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10560"
        _buf.reset();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10561"
        stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, (":status" : stdgo.GoString), ("100" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10562"
        return _ctx.framer().writeHeaders(({ streamID : _w._streamID, blockFragment : _buf.bytes(), endStream : false, endHeaders : true } : stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam));
    }
}
