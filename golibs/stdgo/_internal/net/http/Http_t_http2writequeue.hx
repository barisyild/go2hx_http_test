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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2writequeue_static_extension.T_http2writeQueue_static_extension) @:using(stdgo._internal.net.http.Http_t_http2writequeue_static_extension.T_http2writeQueue_static_extension) class T_http2writeQueue {
    public var _s : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
    public var _prev : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>);
    public var _next : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>);
    public function new(?_s:stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>, ?_prev:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>, ?_next:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>) {
        if (_s != null) this._s = _s;
        if (_prev != null) this._prev = _prev;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writequeuedott_http2writequeue.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writequeuedotT_http2writeQueue }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writequeuedott_http2writequeue.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writequeuedotT_http2writeQueue }) }, optional : false }])));
    public function __copy__() {
        return new T_http2writeQueue(_s, _prev, _next);
    }
}
