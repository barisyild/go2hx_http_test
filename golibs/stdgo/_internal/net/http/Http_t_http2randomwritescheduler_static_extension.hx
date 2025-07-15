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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2randomWriteScheduler_asInterface) class T_http2randomWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11369"
        if (!(@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zero._empty()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11370"
            return { _0 : (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zero._shift()?.__copy__(), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11373"
        if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq != null) for (_streamID => _q in (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11374"
            {
                var __tmp__ = _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11375"
                    if (_q._empty()) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11376"
                        if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq != null) (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq.__remove__(_streamID);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11377"
                        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._put(_q);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11379"
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11382"
        return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11354"
        if (_wr._isControl()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11355"
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._zero._push(_wr?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11356"
            return;
        };
        var _id = @:assignType (_wr.streamID() : stdgo.GoUInt32);
        var __tmp__ = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq != null && (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq.__exists__(_id) ? { _0 : (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq[_id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11360"
        if (!_ok) {
            _q = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._get();
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq[_id] = _q;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11364"
        _q._push(_wr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        var __tmp__ = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq != null && (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq.__exists__(_streamID) ? { _0 : (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq[_streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11342"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11343"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11345"
        if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq != null) (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sq.__remove__(_streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11346"
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._put(_q);
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
    }
}
