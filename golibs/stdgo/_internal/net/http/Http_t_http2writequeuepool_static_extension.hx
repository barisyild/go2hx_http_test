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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeQueuePool_asInterface) class T_http2writeQueuePool_static_extension {
    @:keep
    @:tdfield
    static public function _get( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool>):stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool> = _p;
        var _ln = @:assignType ((_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool).length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10863"
        if (_ln == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10864"
            return (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writequeuedott_http2writequeue.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writequeuedotT_http2writeQueue })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>);
        };
        var _x = @:assignType (_ln - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _q = ((_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool))[(_x : stdgo.GoInt)];
        ((_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool))[(_x : stdgo.GoInt)] = null;
        @:_1 (_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool).__setData__((((_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool)).__slice__(0, _x) : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10870"
        return _q;
    }
    @:keep
    @:tdfield
    static public function _put( _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool>, _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10853"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s != null) for (_i => _ in (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s) {
            (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(_i : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
        };
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
        @:_1 (_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool).__setData__(((_p : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool).__append__(_q) : stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool));
    }
}
