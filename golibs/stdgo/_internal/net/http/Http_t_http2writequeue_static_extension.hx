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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeQueue_asInterface) class T_http2writeQueue_static_extension {
    @:keep
    @:tdfield
    static public function _consume( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>, _n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10832"
        if (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10833"
            return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
        };
        var __tmp__ = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(0 : stdgo.GoInt)].consume(_n), _consumed:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _rest:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._1, _numresult:stdgo.GoInt = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10836"
        {
            final __value__ = _numresult;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10838"
                return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10840"
                _q._shift();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(0 : stdgo.GoInt)] = _rest?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10844"
        return { _0 : _consumed?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _shift( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>):stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10816"
        if (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10817"
            throw new stdgo.AnyInterface(("invalid use of queue" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _wr = @:assignType ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(0 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10821"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__copyTo__(((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>));
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__slice__(0, (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10824"
        return _wr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _push( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = _q;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__append__(_wr?.__copy__()) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10809"
        return ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.length) == ((0 : stdgo.GoInt));
    }
}
